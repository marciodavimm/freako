<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Freako"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<%--<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css"> --%>

		<g:layoutHead/>
		<r:layoutResources />

	<r:require modules="bootstrap" />
	<%-- Bootstrap --%>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/tbs-templates/theme.css" rel="stylesheet">
    <!-- Bootstrap theme --> 
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">

<style>
#footer {
	font-size: 0.75em;
	font-style: italic;
	padding: 2em 1em 2em 1em;
	margin-bottom: 1em;
	margin-top: 1em;
	clear: both;
}

/*requerido para usar navbar com navbar-fixed-top */
body { padding-top: 70px; }

</style>

</head>
<body>
	<!-- myheader tempplate -->
	<g:render template="/layouts/myheader" />

	<g:layoutBody />

	<div id="spinner" class="spinner" style="display: none;">
		<g:message code="spinner.alt" default="Loading&hellip;" />
	</div>

	<g:javascript library="application" />
	<r:layoutResources />
	
	<div class="footer" role="contentinfo">
		<!-- myfooter template -->
		<g:render template="/layouts/myfooter" />
	</div>

</body>
</html>
