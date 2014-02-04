
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="marcio" />
<r:require modules="bootstrap" />

<title>Testes de Aplicação</title>

<!-- Google Maps -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAGyotAiKrsv_yKN6-mf_VoexBtFgRZMOE&sensor=false">	
</script>
<script type="text/javascript">
	function initialize() {
		var mapOptions = {
			center : new google.maps.LatLng(-34.397, 150.644),
			zoom : 5
		};
		var map = new google.maps.Map(document.getElementById("GoogleMapContainer"),
				mapOptions);
	}
	google.maps.event.addDomListener(window, 'load', initialize);
</script>

		<!-- Google Earth Plugin -->
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
		<script type='text/javascript' src="${resource(dir: 'js', file: 'google_earth.js')}"></script>
		<!-- <g:javascript src="google_earth.js" />-->


<style>
#GoogleMapContainer {
	height: 400px;
}
#GoogleEarthContainer{
	min-height: 320px;
	max-height: 400px;
}

</style>
 
</head>

<body>

	<!-- corpo da página -->
	<div class="container theme-showcase">

		<div class="panel panel-success">
			<div class="panel-heading">
				<strong>Categorias e Links: </strong> Selecione categoria/link para testar requisições Ajax
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-sm-6">
						<g:remoteLink class="list-group-item" action="categorias"
							update="mainCategorias"> listar categorias
									</g:remoteLink>
						<g:remoteLink class="list-group-item" action="links"
							update="mainLinks"> listar links
									</g:remoteLink>
						<div class="panel panel-default">
							<div class="panel-heading">
								<strong>Categorias</strong>
							</div>
							<div class="panel-body">
								<div class="list-group" id="mainCategorias">
									<p class="list-group-item">
										<strong>a ser substituido.......</strong>
									</p>
								</div>
							</div>
						</div>
					</div>
					<!-- /.col-sm-6 -->
					<div class="col-sm-6">
						<div class="panel panel-default">
							<div class="panel-heading">
								<strong>Links</strong>
							</div>
							<div class="panel-body">
								<div class="list-group" id="mainLinks">
									<a href="#" class="list-group-item active">
										<h4 class="list-group-item-heading">List group item
											heading</h4>
										<p class="list-group-item-text">Donec id elit non mi porta
											gravida at eget metus. Maecenas sed diam eget risus varius
											blandit.</p>
									</a> <a href="#" class="list-group-item">
										<h4 class="list-group-item-heading">List group item
											heading</h4>
										<p class="list-group-item-text">Donec id elit non mi porta
											gravida at eget metus. Maecenas sed diam eget risus varius
											blandit.</p>
									</a> <a href="#" class="list-group-item">
										<h4 class="list-group-item-heading">List group item
											heading</h4>
										<p class="list-group-item-text">Donec id elit non mi porta
											gravida at eget metus. Maecenas sed diam eget risus varius
											blandit.</p>
									</a>
								</div>
							</div>
						</div>
					</div>
					<!-- /.col-sm-6 -->
				</div>
				<!-- /row -->

			</div>
			<!-- /panel-body -->
		</div>
		<!-- /panel -->

		<div class="panel panel-primary">
			<div class="panel-heading">
				<strong>Google MAP Test</strong>
			</div>
			<!-- /panel-heading -->
			<div class="panel-body" id="GoogleMapContainer"></div>
			<!-- /panel-body -->
		</div>


		<div class="panel panel-danger">
			<div class="panel-heading">
				<strong>Google Earth Test</strong>
			</div>
			<!-- /panel-heading -->
			<div class="panel-body">
				<div class="col-xs-9">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong>Visor do Plugin Google Earth</strong>
						</div>
						<div class="panel-body">
							<div  id="GoogleEarthContainer"></div>
							<div  id="GoogleEarthPluginVersion">
								<strong>Versão do Plugin: </strong>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-3">
					<div class="panel panel-info" >
						<div class="panel-heading">
							<strong>Debug do Plugin Google Earth</strong>
						</div>
						<div class="panel-body">
							<div id="GoogleEarthDebug">
								<h4>Informações do visor:</h4>
								<div id="GEDebugLat">Latitude: </div>
								<div id="GEDebugLon">Longitude: </div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /panel-body -->
		</div>




		<!-- TWITTER BOOTSTRAP THEME TEMPLATES -->

		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
			<h1>Twitter Bootstrap Theme!</h1>
			<p>This is a template for a simple marketing or informational
				website. It includes a large callout called a jumbotron and three
				supporting pieces of content. Use it as a starting point to create
				something more unique.</p>
			<p>
				<a href="#" class="btn btn-primary btn-lg" role="button">Learn
					more &raquo;</a>
			</p>
		</div>
		<!-- close jumbotron -->


		<!-- botoes -->
		<div id="botoes">
			<div class="page-header">
				<h1>Buttons</h1>
			</div>
			<p>
				<button type="button" class="btn btn-lg btn-default">Default</button>
				<button type="button" class="btn btn-lg btn-primary">Primary</button>
				<button type="button" class="btn btn-lg btn-success">Success</button>
				<button type="button" class="btn btn-lg btn-info">Info</button>
				<button type="button" class="btn btn-lg btn-warning">Warning</button>
				<button type="button" class="btn btn-lg btn-danger">Danger</button>
				<button type="button" class="btn btn-lg btn-link">Link</button>
			</p>
			<p>
				<button type="button" class="btn btn-default">Default</button>
				<button type="button" class="btn btn-primary">Primary</button>
				<button type="button" class="btn btn-success">Success</button>
				<button type="button" class="btn btn-info">Info</button>
				<button type="button" class="btn btn-warning">Warning</button>
				<button type="button" class="btn btn-danger">Danger</button>
				<button type="button" class="btn btn-link">Link</button>
			</p>
			<p>
				<button type="button" class="btn btn-sm btn-default">Default</button>
				<button type="button" class="btn btn-sm btn-primary">Primary</button>
				<button type="button" class="btn btn-sm btn-success">Success</button>
				<button type="button" class="btn btn-sm btn-info">Info</button>
				<button type="button" class="btn btn-sm btn-warning">Warning</button>
				<button type="button" class="btn btn-sm btn-danger">Danger</button>
				<button type="button" class="btn btn-sm btn-link">Link</button>
			</p>
			<p>
				<button type="button" class="btn btn-xs btn-default">Default</button>
				<button type="button" class="btn btn-xs btn-primary">Primary</button>
				<button type="button" class="btn btn-xs btn-success">Success</button>
				<button type="button" class="btn btn-xs btn-info">Info</button>
				<button type="button" class="btn btn-xs btn-warning">Warning</button>
				<button type="button" class="btn btn-xs btn-danger">Danger</button>
				<button type="button" class="btn btn-xs btn-link">Link</button>
			</p>
		</div>
		<!-- close botoes -->


		<!-- Imagem -->
		<div id="imagem">
			<div class="page-header">
				<h1>Thumbnails</h1>
			</div>
			<img src="${resource(dir:'images', file:'programming-download.jpg')}"
				class="img-thumbnail"
				alt="A generic square placeholder image with a white border around it, 
			making it resemble a photograph taken with an old instant camera" />
		</div>
		<!-- close Imagem -->


		<!-- menus -->
		<div id="menus dropdown">
			<div class="page-header">
				<h1>Dropdown menus</h1>
			</div>
			<div class="dropdown theme-dropdown clearfix">
				<a id="dropdownMenu1" href="#" role="button"
					class="dropdown-toggle" data-toggle="dropdown">Dropdown
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu" role="menu"
					aria-labelledby="dropdownMenu1">
					<li class="active" role="presentation"><a role="menuitem"
						tabindex="-1" href="#">Action</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">Another action</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">Something else here</a></li>
					<li role="presentation" class="divider"></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">Separated link</a></li>
				</ul>
			</div>

			<!-- close menus -->


		<!-- Navbars -->
		<div id="navbars">
			<div class="page-header">
				<h1>Navbars</h1>
			</div>

			<div class="navbar navbar-default">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Project name</a>
					</div>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="#">Home</a></li>
							<li><a href="#about">About</a></li>
							<li><a href="#contact">Contact</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Dropdown <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Nav header</li>
									<li><a href="#">Separated link</a></li>
									<li><a href="#">One more separated link</a></li>
								</ul></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</div>

			<div class="navbar navbar-inverse">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Project name</a>
					</div>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="#">Home</a></li>
							<li><a href="#about">About</a></li>
							<li><a href="#contact">Contact</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Dropdown <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Nav header</li>
									<li><a href="#">Separated link</a></li>
									<li><a href="#">One more separated link</a></li>
								</ul></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</div>
		</div>
		<!-- close Navbars -->


		<!-- Alertas -->
		<div id="alertas">
			<div class="page-header">
				<h1>Alerts</h1>
			</div>
			<div class="alert alert-success">
				<strong>Well done!</strong> You successfully read this important
				alert message.
			</div>
			<div class="alert alert-info">
				<strong>Heads up!</strong> This alert needs your attention, but it's
				not super important.
			</div>
			<div class="alert alert-warning">
				<strong>Warning!</strong> Best check yo self, you're not looking too
				good.
			</div>
			<div class="alert alert-danger">
				<strong>Oh snap!</strong> Change a few things up and try submitting
				again.
			</div>
		</div>
		<!-- close Alertas -->


		<!-- Progress bars -->
		<div id="barraDeProgresso">
			<div class="page-header">
				<h1>Progress bars</h1>
			</div>
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="60"
					aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
					<span class="sr-only">60% Complete</span>
				</div>
			</div>
			<div class="progress">
				<div class="progress-bar progress-bar-success" role="progressbar"
					aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
					style="width: 40%">
					<span class="sr-only">40% Complete (success)</span>
				</div>
			</div>
			<div class="progress">
				<div class="progress-bar progress-bar-info" role="progressbar"
					aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
					style="width: 20%">
					<span class="sr-only">20% Complete</span>
				</div>
			</div>
			<div class="progress">
				<div class="progress-bar progress-bar-warning" role="progressbar"
					aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
					style="width: 60%">
					<span class="sr-only">60% Complete (warning)</span>
				</div>
			</div>
			<div class="progress">
				<div class="progress-bar progress-bar-danger" role="progressbar"
					aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
					style="width: 80%">
					<span class="sr-only">80% Complete (danger)</span>
				</div>
			</div>
			<div class="progress">
				<div class="progress-bar progress-bar-success" style="width: 35%">
					<span class="sr-only">35% Complete (success)</span>
				</div>
				<div class="progress-bar progress-bar-warning" style="width: 20%">
					<span class="sr-only">20% Complete (warning)</span>
				</div>
				<div class="progress-bar progress-bar-danger" style="width: 10%">
					<span class='sr-only'>10% Complete (danger)</span>
				</div>
			</div>
		</div>
		<!-- close Progress bars -->


		<!-- List groups -->
		<div id="listGroups">
			<div class="page-header">
				<h1>List groups</h1>
			</div>
			<div class="row">
				<div class="col-sm-4">
					<ul class="list-group">
						<li class="list-group-item">Cras justo odio</li>
						<li class="list-group-item">Dapibus ac facilisis in</li>
						<li class="list-group-item">Morbi leo risus</li>
						<li class="list-group-item">Porta ac consectetur ac</li>
						<li class="list-group-item">Vestibulum at eros</li>
					</ul>
				</div>
				<!-- /.col-sm-4 -->
				<div class="col-sm-4">
					<div class="list-group">
						<a href="#" class="list-group-item active"> Cras justo odio </a> <a
							href="#" class="list-group-item">Dapibus ac facilisis in</a> <a
							href="#" class="list-group-item">Morbi leo risus</a> <a href="#"
							class="list-group-item">Porta ac consectetur ac</a> <a href="#"
							class="list-group-item">Vestibulum at eros</a>
					</div>
				</div>
				<!-- /.col-sm-4 -->
				<div class="col-sm-4">
					<div class="list-group">
						<a href="#" class="list-group-item active">
							<h4 class="list-group-item-heading">List group item heading</h4>
							<p class="list-group-item-text">Donec id elit non mi porta
								gravida at eget metus. Maecenas sed diam eget risus varius
								blandit.</p>
						</a> <a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">List group item heading</h4>
							<p class="list-group-item-text">Donec id elit non mi porta
								gravida at eget metus. Maecenas sed diam eget risus varius
								blandit.</p>
						</a> <a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">List group item heading</h4>
							<p class="list-group-item-text">Donec id elit non mi porta
								gravida at eget metus. Maecenas sed diam eget risus varius
								blandit.</p>
						</a>
					</div>
				</div>
				<!-- /.col-sm-4 -->
			</div>
		</div>
		<!-- close List groups -->


		<!-- Panels -->
		<div id="paineis">
			<div class="page-header">
				<h1>Panels</h1>
			</div>
			<div class="row">
				<div class="col-sm-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Panel title</h3>
						</div>
						<div class="panel-body">Panel content</div>
					</div>
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">Panel title</h3>
						</div>
						<div class="panel-body">Panel content</div>
					</div>
				</div>
				<!-- /.col-sm-4 -->
				<div class="col-sm-4">
					<div class="panel panel-success">
						<div class="panel-heading">
							<h3 class="panel-title">Panel title</h3>
						</div>
						<div class="panel-body">Panel content</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">Panel title</h3>
						</div>
						<div class="panel-body">Panel content</div>
					</div>
				</div>
				<!-- /.col-sm-4 -->
				<div class="col-sm-4">
					<div class="panel panel-warning">
						<div class="panel-heading">
							<h3 class="panel-title">Panel title</h3>
						</div>
						<div class="panel-body">Panel content</div>
					</div>
					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="panel-title">Panel title</h3>
						</div>
						<div class="panel-body">Panel content</div>
					</div>
				</div>
				<!-- /.col-sm-4 -->
			</div>
		</div>
		<!-- close Panels -->


		<!-- Wells -->
		<div id="wells">
			<div class="page-header">
				<h1>Wells</h1>
			</div>
			<div class="well">
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Maecenas sed diam eget risus varius blandit sit amet non magna.
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
					commodo cursus magna, vel scelerisque nisl consectetur et. Cras
					mattis consectetur purus sit amet fermentum. Duis mollis, est non
					commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem
					nec elit. Aenean lacinia bibendum nulla sed consectetur.</p>
			</div>
		</div>
		<!-- close Wells -->


	</div>
	<!-- /container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/holder.js"></script> -->

</body>
</html>
