<!DOCTYPE html>
<html>
  <head>
    <title>Teste Bootstrap 101!!!</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
	<!-- ???? -->
	<r:require modules="bootstrap" />
	<%-- Bootstrap --%>
    <link href="css/bootstrap.css" rel="stylesheet">
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://code.jquery.com/jquery.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed 
	<script src="js/bootstrap.min.js"></script>-->
<style>
.myImageThumb {
	width: 210px;
	height: 110px;
}
</style>

</head>
  <body>
	<div class="container">
		<h1 class="text-center">Bootstrap Tests</h1>
		<!-- bootstrap grid myDefault -->
		<div id="myDefault">
			<div class="row">
				<div class="col-md-2">col-md-2</div>
				<div class="col-md-2">col-md-2</div>
				<div class="col-md-2">col-md-2</div>
				<div class="col-md-2">col-md-2</div>
				<div class="col-md-2">col-md-2</div>
				<div class="col-md-2">col-md-2</div>
			</div>
			<div class="row">
				<div class="col-md-2">
					<h3>sidebar of Hello, mundo cruel!!</h3>
				</div>
				<div class="col-md-4">
					<h3>body of Hello, mundo cruel!!</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">col-md-4</div>
				<div class="col-md-4">col-md-4</div>
				<div class="col-md-4">col-md-4</div>
			</div>
		</div>
		<!-- bootstrap myDefault -->

		<!-- bootstrap grid myClearfix -->
		<div id="myClearfix">
			<div class="clearfix visible-md"></div>
		</div>
		<!-- bootstrap myClearfix -->

		<!-- bootstrap grid myMixedDevices -->
		<div id="myMixedDevices">
			<div class="row">
				<div class="col-xs-12 col-md-7">col-xs-12 col-md-7</div>
				<div class="col-xs-6 col-md-2">col-xs-6 col-md-2</div>
			</div>
			<div class="row">
				<div class="col-xs-6 col-md-3">col-xs-6 col-md-3</div>
				<div class="col-xs-6 col-md-8">col-xs-6 col-md-8</div>
				<div class="col-xs-6 col-md-1">xs-6 md-1</div>
			</div>
			<div class="row">
				<div class="col-xs-6">col-xs-6</div>
				<div class="col-xs-6">col-xs-6</div>
			</div>
		</div>
		<!-- bootstrap myMixedDevices -->

		<!-- bootstrap grid myOffset -->
		<div id="myOffset">
			<div class="row">
				<div class="col-md-3 col-md-offset-2">col-md-3 col-md-offset-2</div>
				<div class="col-md-4 col-md-offset-1">col-md-4 col-md-offset1</div>
			</div>
			<div class="row">
				<div class="col-xs-6">col-xs-6</div>
				<div class="col-xs-6">col-xs-6</div>
			</div>
		</div>
		<!-- myOffset -->

		<!-- bootstrap myHeaders -->
		<div id="myHeaders">
			<div class="h1">
				h1.bootstrap.<small>small</small>
			</div>
			<h1>
				h1.normal.<small>small</small>
			</h1>
			<div class="h2">
				h2.bootstrap.<small>small</small>
			</div>
			<h2>
				h2.normal.<small>small</small>
			</h2>
			<div class="h6">
				h6.bootstrap.<small>small</small>
			</div>
			<h6>
				h6.normal.<small>small</small>
			</h6>
		</div>
		<!-- myHeaders -->

		<!-- bootstrap myFormats -->
		<div id="myFormats">
			<div class="row">
				<div class="col-md-8">
					<p class="lead text-center">bootstrap formatting tests</p>
				</div>
				<div class="col-md-4">
					<p class="text-right">
						bootstrap <small>small</small>, <strong>strong</strong>, <em>emphasized</em>,
						<i>italic</i>, <b>bold</b>.
					</p>
				</div>
			</div>
			<!-- row -->
			<div class="row">
				<div class="col-md-2">
					<p class="text-center text-primary">bootstrap primary</p>
				</div>
				<div class="col-md-2">
					<p class="text-center text-muted">bootstrap muted</p>
				</div>
				<div class="col-md-2">
					<p class="text-center text-success">bootstrap sucess</p>
				</div>
				<div class="col-md-2">
					<p class="text-center text-info">bootstrap info</p>
				</div>
				<div class="col-md-2">
					<p class="text-center text-warning">bootstrap warning</p>
				</div>
				<div class="col-md-2">
					<p class="text-center text-danger">bootstrap danger</p>
				</div>
				<p>
					bootstrap abbr. <abbr title="Centro Universitário do RN">UNIRN</abbr>
				</p>
				<p>
					bootstrap initialism. <abbr class="initialism"
						title="Centro Universitário do RN">UNIRN</abbr>
				</p>
			</div>
		</div>
		<!-- myFormats -->

		<!-- bootstrap myLists -->
		<div id="myLists">
			<div class="row">
				<div class="col-md-6">
					<ul>
						<li>ul1</li>
						<li>ul2</li>
						<li>ul3</li>
					</ul>
				</div>
				<div class="col-md-6">
					<div class="row">
						<ol class="list-unstyled">
							<li>list-unstyled1</li>
							<li>list-unstyled2</li>
							<li>list-unstyled3</li>
						</ol>
					</div>
					<!-- inner row -->
					<div class="row">
						<ol class="list-inline">
							<li>list-inline4</li>
							<li>list-inline5</li>
							<li>list-inline6</li>
						</ol>
					</div>
					<!-- inner row -->
				</div>
				<!-- column -->
			</div>
			<!-- outer row -->
			<dl class="dl-horizontal">
				<dt>dt1</dt>
				<dd>description list1</dd>
				<dt>dt2</dt>
				<dd>description list2</dd>
				<dt>dt3</dt>
				<dd>description list3</dd>
			</dl>
		</div>
		<!-- myLists -->

		<!-- bootstrap myTables -->
		<div id="myTables">
			<div class="table-responsive">
				<table class="table table-striped table-hover table-bordered">
					<thead>
						<tr class="active">
							<th>table h.1.1</th>
							<th>table h.1.2</th>
							<th>table h.1.3</th>
						</tr>
					</thead>
					<tfoot>
						<tr class="success">
							<td>foot1</td>
							<td>foot2</td>
						</tr>
					</tfoot>
					<tbody>
						<tr class="warning">
							<th>table h.2.1</th>
							<td>table d.2.2</td>
							<td>table d.2.3</td>
						</tr>
						<tr class="danger">
							<th>table h.3.1</th>
							<td>table d.3.2</td>
							<td>table d.3.3</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- .table-responsive -->
		</div>
		<!-- myTables -->

		<!-- bootstrap myForms -->
		<div id="myForms">
			<form role="form1" class="table table-bordered">
				<div class="form-group has-success">
					<label for="email1" class="control-label col-md-offset-1 col-md-1">E-mail1</label>
					<div class="col-md-offset-2 col-md-8">
						<input type="email" class="form-control" id="email1"
							placeholder="Enter email">
					</div>
				</div>
				<div class="form-group has-warning">
					<label for="password1"
						class="control-label col-md-offset-1 col-md-1">Password1</label>
					<div class="col-md-offset-2 col-md-8">
						<input type="password" class="form-control" id="password1"
							placeholder="Enter password">
					</div>
				</div>
				<div class="form-group">
					<label for="fileInput">File input1</label> <input type="file"
						id="fileInput">
					<p class="help-block">help text no bloco1.</p>
				</div>
				<div class="checkbox">
					<label><input type="checkbox"> check1</label><br/>
					<label><input type="checkbox"> check2</label>
				</div>
				<button type="submit" class="btn btn-default">Submit1</button>
			</form>

			<form role="form2" class="form-inline table table-bordered">
				<div class="form-group has-warning">
					<label class="sr-only" for="email2">Email2</label> <input
						type="email" class="form-control" id="email2"
						placeholder="Enter email">
				</div>
				<div class="form-group">
					<label class="sr-only" for="password2">Password2</label> <input
						type="password" class="form-control" id="password2"
						placeholder="Enter Password">
				</div>
				<div class="checkbox">
					<label><input type="checkbox">Remember2</label>
				</div>
				<button type="submit" class="btn btn-default">Entrar2</button>
			</form>

			<form role="form3" class="form-horizontal table table-bordered">
				<div class="form-group has-error">
					<label for="email3" class="col-sm-2 control-label">Email3-lg</label>
					<div class="col-sm-10">
						<input type="email" class="form-control input-lg" id="email3"
							placeholder="Enter email">
					</div>
				</div>
				<div class="form-group">
					<label for="password3" class="col-sm-2 control-label">Password3-sm</label>
					<div class="col-sm-10">
						<input disabled type="password" class="form-control input-sm"
							id="password3" placeholder="Enter password">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							<label><input type="checkbox">Remember3</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Disabled btn</label>
					<div class="col-sm-2 col-sm-10">
						<button type="submit" class="btn btn-default" disabled>Entrar3</button>
					</div>
				</div>
			</form>

			<form role="form4" class="table table-bordered">
				<label for="area1">Form4.Texto1</label>
				<textarea rows="3" class="form-control" id="area1"></textarea>
				<div class="checkbox">
					<label><input type="checkbox">checkbox4.1</label>
				</div>
				<label class="checkbox-inline"><input type="checkbox">checkbox4.2</label>
				<label class="checkbox-inline"><input type="checkbox">checkbox4.3</label>
				<label class="checkbox-inline"><input type="checkbox">checkbox4.4</label>
				<div class="radio">
					<label><input type="radio" name="radios" id="radio1"
						value="opt1" checked> form4.radios.option1(def) </label>
				</div>
				<div class="radio">
					<label><input type="radio" name="radios" id="radio2"
						value="opt2"> form4.radios.option2 </label>
				</div>
				<div class="radio">
					<label><input type="radio" name="radios" id="radio3"
						value="opt3"> form4.radios.option3 </label>
				</div>
				<fieldset disabled>
					<label class="radio-inline"> <input type="radio"
						name="radios2" id="rb1" value="opt1"> rb.inline.1
					</label> <label class="radio-inline"> <input type="radio"
						name="radios2" id="rb2" value="opt2" checked>
						rb.inline.2(def)
					</label> <label class="radio-inline"> <input type="radio"
						name="radios2" id="rb3" value="opt3"> rb.inline.3
					</label>
				</fieldset>
				<fieldset>
					<select class="form-control">
						<option>select1.1</option>
						<option>select1.2</option>
						<option>select1.3</option>
						<option>select1.4</option>
					</select> <select multiple class="form-control">
						<option>select2.1</option>
						<option>select2.2</option>
						<option>select2.3</option>
						<option>select2.4</option>
					</select>
				</fieldset>

			</form>

		</div>
		<!-- myForms -->

		<!-- bootstrap myButtons -->
		<div id="myButtons">
			<div class="row">
				<div class="col-md-offset-1 col-md-10 table-bordered text-center">
					<br>
					<button type="button" class="btn btn-default">Default</button>
					<button type="button" class="btn btn-primary btn-block">Primary
						btn-block</button>
					<button type="button" class="btn btn-success">Success</button>
					<button type="button" class="btn btn-info btn-lg">Info Lg</button>
					<button type="button" class="btn btn-warning btn-sm">Warning
						Sm</button>
					<button type="button" class="btn btn-danger btn-xs">Danger
						Xs</button>
					<button type="button" class="btn btn-link">link</button>
					<br> <br>
				</div>
			</div>

			<div class="row">
				<div class="col-md-offset-1 col-md-10 table-bordered text-center">
					<br> <a href="#" class="btn btn-default">Default Link</a> <a
						href="#" class="btn btn-primary">Primary Link</a> <a href="#"
						class="btn btn-success">Success Link</a> <a href="#"
						class="btn btn-info btn-lg">Info Link Lg</a> <a href="#"
						class="btn btn-warning btn-sm">Warning Link Sm</a> <a href="#"
						class="btn btn-danger btn-xs">Danger Link Xs</a> <a href="#"
						class="btn btn-link">link</a> <br> <br>
				</div>
			</div>

			<div class="row">
				<div class="col-md-offset-1 col-md-10 table-bordered text-center">
					<br> <a href="#" class="btn btn-default">Default Link</a>
					<button type="submit" class="btn btn-primary">Button
						submit</button>
					<input class="btn btn-success" type="button" value="Input button">
					<input class="btn btn-warning" type="submit" value="input submit">
					<br> <br>
				</div>
			</div>

		</div>
		<!-- myButtons -->
		
		<br>
		<div id="myImages">
			<div class="row center-block">
				<div class="col-sm-offset-1 col-sm-10 table-bordered">
					<br>
					<div>
						<img src="${resource(dir:'images', file:'programming-download.jpg')}" alt="grails imagem original" />
						<img src="${resource(dir:'images', file:'programming-download.jpg')}" alt="grails imagem round-corner" class="myImageThumb img-rounded" />
						<g:img dir="images" file="programming-download.jpg" alt="grails imagem circle" class="myImageThumb img-circle" />
						<img src="${resource(dir:'images', file:'programming-download.jpg')}" alt="grails imagem thumbnail" class="myImageThumb img-thumbnail" />
					</div>
					<br> <br>
				</div>
			</div>
		</div>
		<!-- myImages -->
		
		
		
		<p class="text-center">
			<small>end...</small>
		</p>
	</div>
	<!-- container -->



</body>
</html>