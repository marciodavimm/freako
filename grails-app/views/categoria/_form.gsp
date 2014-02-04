<%@ page import="freako.Categoria" %>



<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="categoria.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${categoriaInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'links', 'error')} ">
	<label for="links">
		<g:message code="categoria.links.label" default="Links" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoriaInstance?.links?}" var="l">
    <li><g:link controller="link" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="link" action="create" params="['categoria.id': categoriaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'link.label', default: 'Link')])}</g:link>
</li>
</ul>

</div>

