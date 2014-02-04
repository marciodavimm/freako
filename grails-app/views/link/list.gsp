
<%@ page import="freako.Link" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'link.label', default: 'Link')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-link" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-link" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'link.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="url" title="${message(code: 'link.url.label', default: 'Url')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'link.descricao.label', default: 'Descricao')}" />
					<%-- 
						<g:sortableColumn property="votosPositivos" title="${message(code: 'link.votosPositivos.label', default: 'Votos Positivos')}" />
					
						<g:sortableColumn property="votosNegativos" title="${message(code: 'link.votosNegativos.label', default: 'Votos Negativos')}" />
					 --%>
						<g:sortableColumn property="visualizacoes" title="${message(code: 'link.visualizacoes.label', default: 'Visualizacoes')}" />
						
						<th>Imagem</th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${linkInstanceList}" status="i" var="linkInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${linkInstance.id}">${fieldValue(bean: linkInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: linkInstance, field: "url")}</td>
					
						<td>${fieldValue(bean: linkInstance, field: "descricao")}</td>
						
					<%--
						<td>${fieldValue(bean: linkInstance, field: "votosPositivos")}</td>
					
						<td>${fieldValue(bean: linkInstance, field: "votosNegativos")}</td>
					 --%>
						<td>${fieldValue(bean: linkInstance, field: "visualizacoes")}</td>
					
						<td><g:img class="myImageThumb" uri="/link/imagemLink/${linkInstance.id}" />
						</td>
						
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${linkInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
