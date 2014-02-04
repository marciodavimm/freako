
<%@ page import="freako.Link" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'link.label', default: 'Link')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-link" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-link" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list link">
			
				<g:if test="${linkInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="link.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${linkInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${linkInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="link.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${linkInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${linkInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="link.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${linkInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${linkInstance?.votosPositivos}">
				<li class="fieldcontain">
					<span id="votosPositivos-label" class="property-label"><g:message code="link.votosPositivos.label" default="Votos Positivos" /></span>
					
						<span class="property-value" aria-labelledby="votosPositivos-label"><g:fieldValue bean="${linkInstance}" field="votosPositivos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${linkInstance?.votosNegativos}">
				<li class="fieldcontain">
					<span id="votosNegativos-label" class="property-label"><g:message code="link.votosNegativos.label" default="Votos Negativos" /></span>
					
						<span class="property-value" aria-labelledby="votosNegativos-label"><g:fieldValue bean="${linkInstance}" field="votosNegativos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${linkInstance?.visualizacoes}">
				<li class="fieldcontain">
					<span id="visualizacoes-label" class="property-label"><g:message code="link.visualizacoes.label" default="Visualizacoes" /></span>
					
						<span class="property-value" aria-labelledby="visualizacoes-label"><g:fieldValue bean="${linkInstance}" field="visualizacoes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${linkInstance?.cliques}">
				<li class="fieldcontain">
					<span id="cliques-label" class="property-label"><g:message code="link.cliques.label" default="Cliques" /></span>
					
						<span class="property-value" aria-labelledby="cliques-label"><g:fieldValue bean="${linkInstance}" field="cliques"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${linkInstance?.objeto}">
				<li class="fieldcontain">
					<span id="objeto-label" class="property-label"><g:message code="link.objeto.label" default="Objeto" /></span>
					
						<span class="property-value" aria-labelledby="objeto-label"><g:fieldValue bean="${linkInstance}" field="objeto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${linkInstance?.imagem}">
				<li class="fieldcontain">
					<!-- <span id="imagem-label" class="property-label"><g:message code="link.imagem.label" default="Imagem" /></span>
					 -->
					<span id="imagem-label" class="property-label"><g:message code="link.imagem.label" default="Imagem" /></span>
					<span id="imagem-label" class="property-label"><img src="/freako/link/imagemLink/${linkInstance.id}"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${linkInstance?.autor}">
				<li class="fieldcontain">
					<span id="autor-label" class="property-label"><g:message code="link.autor.label" default="Autor" /></span>
					
						<span class="property-value" aria-labelledby="autor-label"><g:link controller="usuario" action="show" id="${linkInstance?.autor?.id}">${linkInstance?.autor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${linkInstance?.categoria}">
				<li class="fieldcontain">
					<span id="categoria-label" class="property-label"><g:message code="link.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:link controller="categoria" action="show" id="${linkInstance?.categoria?.id}">${linkInstance?.categoria?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${linkInstance?.comentarios}">
				<li class="fieldcontain">
					<span id="comentarios-label" class="property-label"><g:message code="link.comentarios.label" default="Comentarios" /></span>
					
						<g:each in="${linkInstance.comentarios}" var="c">
						<span class="property-value" aria-labelledby="comentarios-label"><g:link controller="comentario" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${linkInstance?.id}" />
					<g:link class="edit" action="edit" id="${linkInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
