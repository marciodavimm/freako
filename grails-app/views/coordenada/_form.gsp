<%@ page import="freako.Coordenada" %>


<div
	class="fieldcontain ${hasErrors(bean: coordenadaInstance, field: 'nome', 'error')} required form-group">
	<label for="nome" class="col-sm-2 control-label"> <g:message
			code="coordenada.nome.label" default="Nome" /> <span
		class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="nome" class='form-control' required=""
			value="${coordenadaInstance?.nome}" />
	</div>
</div>

<div
	class="fieldcontain ${hasErrors(bean: coordenadaInstance, field: 'local', 'error')} form-group">
	<label for="local" class="col-sm-2 control-label"> <g:message
			code="coordenada.local.label" default="Local" />

	</label>
	<div class="col-sm-10">
		<g:textField name="local" class='form-control'
			value="${coordenadaInstance?.local}" />
	</div>
</div>

<div
	class="fieldcontain ${hasErrors(bean: coordenadaInstance, field: 'latitude', 'error')} form-group">
	<label for="latitude" class="col-sm-2 control-label"> <g:message
			code="coordenada.latitude.label" default="Latitude" /> <span
		class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:field name="latitude" class='form-control' type='text' id='formCreateFieldLatitude' 
			value="${fieldValue(bean: coordenadaInstance, field: 'latitude')}"
			/>
	</div>
</div>

<div
	class="fieldcontain ${hasErrors(bean: coordenadaInstance, field: 'longitude', 'error')} form-group">
	<label for="longitude" class="col-sm-2 control-label"> <g:message
			code="coordenada.longitude.label" default="Longitude" /> <span
		class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:field name="longitude" class='form-control' type='text' id='formCreateFieldLongitude'
			value="${fieldValue(bean: coordenadaInstance, field: 'longitude')}"
			 />
	</div>
</div>

<div
	class="fieldcontain ${hasErrors(bean: coordenadaInstance, field: 'autor', 'error')} required form-group">
	<label for="autor" class="col-sm-2 control-label"> <g:message
			code="coordenada.autor.label" default="Autor" /> <span
		class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select id="autor" name="autor.id" from="${freako.Usuario.list()}"
			optionKey="id" required="" value="${session.usuario.id}"
			class="many-to-one form-control" />
			<%-- optionKey="id" required="" value="${coordenadaInstance?.autor?.id}" --%>
	</div>
</div>





<%--
<div class="fieldcontain ${hasErrors(bean: coordenadaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="coordenada.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${coordenadaInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordenadaInstance, field: 'local', 'error')} ">
	<label for="local">
		<g:message code="coordenada.local.label" default="Local" />
		
	</label>
	<g:textField name="local" value="${coordenadaInstance?.local}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordenadaInstance, field: 'latitude', 'error')} required">
	<label for="latitude">
		<g:message code="coordenada.latitude.label" default="Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="latitude" value="${fieldValue(bean: coordenadaInstance, field: 'latitude')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordenadaInstance, field: 'longitude', 'error')} required">
	<label for="longitude">
		<g:message code="coordenada.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longitude" value="${fieldValue(bean: coordenadaInstance, field: 'longitude')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordenadaInstance, field: 'autor', 'error')} required">
	<label for="autor">
		<g:message code="coordenada.autor.label" default="Autor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="autor" name="autor.id" from="${freako.Usuario.list()}" optionKey="id" required="" value="${coordenadaInstance?.autor?.id}" class="many-to-one"/>
</div>
 --%>
