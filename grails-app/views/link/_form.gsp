<%@ page import="freako.Link" %>



<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="link.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${linkInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'url', 'error')} required">
	<label for="url">
		<g:message code="link.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="url" required="" value="${linkInstance?.url}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="link.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${linkInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'votosPositivos', 'error')} required">
	<label for="votosPositivos">
		<g:message code="link.votosPositivos.label" default="Votos Positivos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="votosPositivos" type="number" min="0" value="${linkInstance.votosPositivos}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'votosNegativos', 'error')} required">
	<label for="votosNegativos">
		<g:message code="link.votosNegativos.label" default="Votos Negativos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="votosNegativos" type="number" min="0" value="${linkInstance.votosNegativos}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'visualizacoes', 'error')} required">
	<label for="visualizacoes">
		<g:message code="link.visualizacoes.label" default="Visualizacoes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="visualizacoes" type="number" min="0" value="${linkInstance.visualizacoes}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'cliques', 'error')} required">
	<label for="cliques">
		<g:message code="link.cliques.label" default="Cliques" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cliques" type="number" min="0" value="${linkInstance.cliques}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'objeto', 'error')} ">
	<label for="objeto">
		<g:message code="link.objeto.label" default="Objeto" />
		
	</label>
	<g:textField name="objeto" value="${linkInstance?.objeto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'imagem', 'error')} required">
	<label for="imagem">
		<g:message code="link.imagem.label" default="Imagem" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="imagem" name="imagem" />
</div>

<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'autor', 'error')} required">
	<label for="autor">
		<g:message code="link.autor.label" default="Autor" />
		<span class="required-indicator">*</span>
	</label>	<%-- from='${session.usuario}' --%>				<%-- value='${linkInstance?.autor?.id}' --%>
	<g:select id="autor" name="autor.id" from="${freako.Usuario.list()}" optionKey="id" required="" value="${session.usuario.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="link.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categoria" name="categoria.id" from="${freako.Categoria.list()}" optionKey="id" required="" value="${linkInstance?.categoria?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'comentarios', 'error')} ">
	<label for="comentarios">
		<g:message code="link.comentarios.label" default="Comentarios" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${linkInstance?.comentarios?}" var="c">
    <li><g:link controller="comentario" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="comentario" action="create" params="['link.id': linkInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'comentario.label', default: 'Comentario')])}</g:link>
</li>
</ul>

</div>

