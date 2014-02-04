<%@ page import="freako.Usuario" %>



<div
	class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'login', 'error')} required">
	<label for="login"> <g:message code="usuario.login.label"
			default="Login" /> <span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${usuarioInstance?.login}" />
</div>

<div
	class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} ">
	<label for="email"> <g:message code="usuario.email.label"
			default="Email" />

	</label>
	<g:field type="email" name="email" value="${usuarioInstance?.email}" />
</div>

<div
	class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'senha', 'error')} required">
	<label for="senha"> <g:message code="usuario.senha.label"
			default="Senha" /> <span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" maxlength="10" required=""
		value="${usuarioInstance?.senha}" />
</div>

<div
	class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'hashSenha', 'error')} ">
	<label for="hashSenha"> <g:message
			code="usuario.hashSenha.label" default="Hash Senha" />

	</label>
	<g:textField name="hashSenha" value="${usuarioInstance?.hashSenha}" />
</div>

<div
	class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'links', 'error')} ">
	<label for="links"> <g:message code="usuario.links.label"
			default="Links" />

	</label>

	<ul class="one-to-many">
		<g:each in="${usuarioInstance?.links?}" var="l">
			<li><g:link controller="link" action="show" id="${l.id}">
					${l?.encodeAsHTML()}
				</g:link></li>
		</g:each>
		<li class="add"><g:link controller="link" action="create"
				params="['usuario.id': usuarioInstance?.id]">
				${message(code: 'default.add.label', args: [message(code: 'link.label', default: 'Link')])}
			</g:link></li>
	</ul>

</div>

