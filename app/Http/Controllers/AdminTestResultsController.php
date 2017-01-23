<?php namespace App\Http\Controllers;

use Session;
    use Request;
    use DB;
    use CRUDBooster;

    class AdminTestResultsController extends \crocodicstudio\crudbooster\controllers\CBController
    {
        public function __construct()
        {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = false;
			$this->button_edit = false;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = true;
			$this->button_export = true;
			$this->table = "test_results";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Execution","name"=>"id_execution"];
			$this->col[] = ["label"=>"Notes","name"=>"id_execution","join"=>"execution,notes"];
			$this->col[] = ["label"=>"Sites","name"=>"id_sites","join"=>"sites,name"];
			$this->col[] = ["label"=>"Url","name"=>"url"];
			$this->col[] = ["label"=>"Type","name"=>"type"];
			$this->col[] = ["label"=>"Code","name"=>"code"];
			$this->col[] = ["label"=>"Message","name"=>"message","callback_php"=>'htmlentities($row->message)'];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ["label"=>"Execution","name"=>"id_execution","type"=>"select2","validation"=>"required|integer|min:0","width"=>"col-sm-10","datatable"=>"execution,id"];
			$this->form[] = ["label"=>"Sites","name"=>"id_sites","type"=>"select2","validation"=>"required|integer|min:0","width"=>"col-sm-10","datatable"=>"sites,name"];
			$this->form[] = ["label"=>"Url","name"=>"url","type"=>"text","validation"=>"required|url","width"=>"col-sm-10","placeholder"=>"Please enter a valid URL"];
			$this->form[] = ["label"=>"Standard","name"=>"standard","type"=>"text","validation"=>"required|min:3|max:255","width"=>"col-sm-10"];
			$this->form[] = ["label"=>"Type","name"=>"type","type"=>"text","validation"=>"required|min:3|max:255","width"=>"col-sm-10"];
			$this->form[] = ["label"=>"Code","name"=>"code","type"=>"textarea","validation"=>"required|string|min:5|max:5000","width"=>"col-sm-10"];
			$this->form[] = ["label"=>"Context","name"=>"context","type"=>"textarea","validation"=>"required|string|min:5|max:5000","width"=>"col-sm-10"];
			$this->form[] = ["label"=>"Message","name"=>"message","type"=>"textarea","validation"=>"required|string|min:5|max:5000","width"=>"col-sm-10"];
			$this->form[] = ["label"=>"Selector","name"=>"selector","type"=>"textarea","validation"=>"required|string|min:5|max:5000","width"=>"col-sm-10"];
			$this->form[] = ["label"=>"Typecode","name"=>"typecode","type"=>"number","validation"=>"required|integer|min:0","width"=>"col-sm-10"];
			$this->form[] = ["label"=>"Is Active","name"=>"is_active","type"=>"radio","validation"=>"required|integer","width"=>"col-sm-10","dataenum"=>"Array"];
			$this->form[] = ["label"=>"Created On","name"=>"created_on","type"=>"datetime","validation"=>"required|date_format:Y-m-d H:i:s","width"=>"col-sm-10"];
			$this->form[] = ["label"=>"Updated On","name"=>"updated_on","type"=>"datetime","validation"=>"required|date_format:Y-m-d H:i:s","width"=>"col-sm-10"];
			# END FORM DO NOT REMOVE THIS LINE

			/*
            | ----------------------------------------------------------------------
            | Sub Module
            | ----------------------------------------------------------------------
            | @label          = Label of action
            | @path           = Path of sub module
            | @button_color   = Bootstrap Class (primary,success,warning,danger)
            | @button_icon    = Font Awesome Class
            | @parent_columns = Sparate with comma, e.g : name,created_at
            |
            */
            $this->sub_module = array();


            /*
            | ----------------------------------------------------------------------
            | Add More Action Button / Menu
            | ----------------------------------------------------------------------
            | @label       = Label of action
            | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
            | @icon        = Font awesome class icon. e.g : fa fa-bars
            | @color 	   = Default is primary. (primary, warning, succecss, info)
            | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
            |
            */
            $this->addaction = array();


            /*
            | ----------------------------------------------------------------------
            | Add More Button Selected
            | ----------------------------------------------------------------------
            | @label       = Label of action
            | @icon 	   = Icon from fontawesome
            | @name 	   = Name of button
            | Then about the action, you should code at actionButtonSelected method
            |
            */
            $this->button_selected = array();


            /*
            | ----------------------------------------------------------------------
            | Add alert message to this module at overheader
            | ----------------------------------------------------------------------
            | @message = Text of message
            | @type    = warning,success,danger,info
            |
            */
            $this->alert        = array();



            /*
            | ----------------------------------------------------------------------
            | Add more button to header button
            | ----------------------------------------------------------------------
            | @label = Name of button
            | @url   = URL Target
            | @icon  = Icon from Awesome.
            |
            */
            $this->index_button = array();



            /*
            | ----------------------------------------------------------------------
            | Customize Table Row Color
            | ----------------------------------------------------------------------
            | @condition = If condition. You may use field alias. E.g : [id] == 1
            | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.
            |
            */
            $this->table_row_color = array(
              array("condition"=>"[type] == 'error'","color"=>"danger"),
              array("condition"=>"[type] == 'warning'","color"=>"warning"),

            );


            /*
            | ----------------------------------------------------------------------
            | You may use this bellow array to add statistic at dashboard
            | ----------------------------------------------------------------------
            | @label, @count, @icon, @color
            |
            */
            $this->index_statistic = array();



            /*
            | ----------------------------------------------------------------------
            | Add javascript at body
            | ----------------------------------------------------------------------
            | javascript code in the variable
            | $this->script_js = "function() { ... }";
            |
            */
            $this->script_js = null;



            /*
            | ----------------------------------------------------------------------
            | Include Javascript File
            | ----------------------------------------------------------------------
            | URL of your javascript each array
            | $this->load_js[] = asset("myfile.js");
            |
            */
            $this->load_js = array();



            //No need chanage this constructor
            $this->constructor();
        }


        /*
        | ----------------------------------------------------------------------
        | Hook for button selected
        | ----------------------------------------------------------------------
        | @id_selected = the id selected
        | @button_name = the name of button
        |
        */
        public function actionButtonSelected($id_selected, $button_name)
        {
            //Your code here
        }


        /*
        | ----------------------------------------------------------------------
        | Hook for manipulate query of index result
        | ----------------------------------------------------------------------
        | @query = current sql query
        |
        */
        public function hook_query_index(&$query)
        {
            //Your code here
        }

        /*
        | ----------------------------------------------------------------------
        | Hook for manipulate row of index table html
        | ----------------------------------------------------------------------
        |
        */
        public function hook_row_index($column_index, &$column_value)
        {
            if ($column_index==5) {
                if ($column_value == 'error') {
                    $column_value = '<span class="label label-danger"> Error </span>';
                } elseif ($column_value == 'warning') {
                    $column_value = '<span class="label label-warning"> Warning </span>';
                } elseif ($column_value == 'notice') {
                    $column_value = '<span class="label label-info"> Notice </span>';
                } elseif ($column_value == 'none') {
                    $column_value = '<span class="label label-success"> Success </span>';
                }
            }

						if ($column_index==4) {
                $column_value = '<a href="'.$column_value.'" target="_blank"> '.$column_value.'</a>';
            }
            //Your code here
        }

        /*
        | ----------------------------------------------------------------------
        | Hook for manipulate data input before add data is execute
        | ----------------------------------------------------------------------
        | @arr
        |
        */
        public function hook_before_add(&$postdata)
        {
            //Your code here
        }

        /*
        | ----------------------------------------------------------------------
        | Hook for execute command after add public static function called
        | ----------------------------------------------------------------------
        | @id = last insert id
        |
        */
        public function hook_after_add($id)
        {
            //Your code here
        }

        /*
        | ----------------------------------------------------------------------
        | Hook for manipulate data input before update data is execute
        | ----------------------------------------------------------------------
        | @postdata = input post data
        | @id       = current id
        |
        */
        public function hook_before_edit(&$postdata, $id)
        {
            //Your code here
        }

        /*
        | ----------------------------------------------------------------------
        | Hook for execute command after edit public static function called
        | ----------------------------------------------------------------------
        | @id       = current id
        |
        */
        public function hook_after_edit($id)
        {
            //Your code here
        }

        /*
        | ----------------------------------------------------------------------
        | Hook for execute command before delete public static function called
        | ----------------------------------------------------------------------
        | @id       = current id
        |
        */
        public function hook_before_delete($id)
        {
            //Your code here
        }

        /*
        | ----------------------------------------------------------------------
        | Hook for execute command after delete public static function called
        | ----------------------------------------------------------------------
        | @id       = current id
        |
        */
        public function hook_after_delete($id)
        {
            //Your code here
        }



        //By the way, you can still create your own method in here... :)
    }