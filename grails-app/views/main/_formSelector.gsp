
<%-- <a href="${createLink(action:'linksPorCategoria', id:'${item.id}')}" class='list-group-item'>test2 ${item}</a> --%>

<a href='#' class="list-group-item active" >${dados.find().getClass().name } <span class='badge'>${dados.findAll().size() }</span></a>
<g:each in='${dados}' var="item">
	<g:remoteLink class="list-group-item" action="${action }"
		controller="${controller }" params="[valor:item]" update="${destino }">testAjax template ${item.class}, ${item.nome }
	</g:remoteLink>
</g:each>


<div class="dropdown theme-dropdown list-group-item clearfix">
		<a id="dropdownMenu1" href="#" role="button" class="dropdown-toggle"
			data-toggle="dropdown">Menu de ${dados.find().getClass().name } <b class="caret"></b>
		</a>
	<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
		<g:each in='${dados}' var="item">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">
					${item }
			</a></li>
		</g:each>
	</ul>
</div>
