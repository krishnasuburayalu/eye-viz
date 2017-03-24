@if($command=='layout')
<div id='{{$componentID}}' class="box box-default">
  <div class="box-header with-border">
    <h3 class="box-title">[name]</h3>
    <div class="box-tools pull-right">
      <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
      <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
    </div><!-- /.box-tools -->
  </div><!-- /.box-header -->
  <div class="box-body">
    <p>[content]</p>
  </div><!-- /.box-body -->
</div><!-- /.box -->

@elseif($command=='configuration')
	<form method='post'>
		<input type='hidden' name='_token' value='{{csrf_token()}}'/>
		<input type='hidden' name='componentid' value='{{$componentID}}'/>
		<div class="form-group">
			<label>Name</label>
			<input class="form-control" required name='config[name]' type='text' value='{{@$config->name}}'/>
		</div>

		<div class="form-group">
			<label>Content</label>
			<textarea name='config[content]' required rows="10" class='form-control'>{{@$config->content}}</textarea>
		</div>

	</form>
@elseif($command=='showFunction')
<?php 
	echo $value;
?>
@endif	