<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="marcio" />
<title>	</title>
</head>
<body>
	<div class="body">

		<div class="container">
			<div class="list-group">
				<g:each in="${resultado }" var="r">
					<a href="#" class="list-group-item">
						${nome }: ${r.nome }
					</a>
				</g:each>
			</div>
		</div>

	</div>
</body>
</html>