<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\Controller;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\PDF;
use Maatwebsite\Excel\Facades\Excel;
use Schema;
use CRUDBooster;
use App\Model\TestResults;
use CSDHelper\CodeSniffDoc;

/**
 * All for overriding the get detail function
 */


    class AdminBaseController extends \crocodicstudio\crudbooster\controllers\CBController
    {
        public function postExportData() {
            $this->limit        = Request::input('limit');
            $this->index_return = TRUE;
            $filetype           = Request::input('fileformat');
            $filename           = Request::input('filename');
            $papersize          = Request::input('page_size');
            $paperorientation   = Request::input('page_orientation');
            $response           = $this->getIndex();            
        
            if(Request::input('default_paper_size')) {
                DB::table('cms_settings')->where('name','default_paper_size')->update(['content'=>$papersize]);
            }

            switch($filetype) {
                case "pdf":
                    $view = view('export',$response)->render();                    
                    $pdf = App::make('dompdf.wrapper');
                    $pdf->loadHTML($view);
                    $pdf->setPaper($papersize,$paperorientation);
                    return $pdf->stream($filename.'.pdf'); 
                break;
                case 'xls':
                    Excel::create($filename, function($excel) use ($response) {
                        $excel->setTitle($filename)
                        ->setCreator("crudbooster.com")
                        ->setCompany(CRUDBooster::getSetting('appname'));                   
                        $excel->sheet($filename, function($sheet) use ($response) {
                            $sheet->setOrientation($paperorientation);
                            $sheet->loadview('export',$response);
                        });
                    })->export('xls');
                break;
                case 'csv':
                    Excel::create($filename, function($excel) use ($response) {
                        $excel->setTitle($filename)
                        ->setCreator("crudbooster.com")
                        ->setCompany(CRUDBooster::getSetting('appname'));                   
                        $excel->sheet($filename, function($sheet) use ($response) {
                            $sheet->setOrientation($paperorientation);
                            $sheet->loadview('export',$response);
                        });
                    })->export('csv');
                break;
            }
        }    
}