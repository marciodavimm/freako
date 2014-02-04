package freako
import freako.Categoria
import freako.Link

class MainController {

	def index = {
		redirect(action:"maintests", params:params)
	}
	
	def categorias={
		def c = Categoria.createCriteria()
		def categorias = c.list {}
		
		render(template:"formSelector", 
			model:[dados:categorias, destino:'mainLinks', action:'linksPorCategoria', controller:'main'])
	}
	
	def links={
		def l = Link.createCriteria()
		def links = l.list{}
		render(template:'formSelector',
			model:[dados:links, destino:'mainCategorias', action:'categoriaDoLink', controller:'main'])
	}
	
	def maintests={
	}
	
	
	def linksPorCategoria = {
		String links = ""
		def cat = Categoria.findByNome(params.valor)
		def linksPorCategoria = Link.findAllByCategoria(cat)
		for(Link item:linksPorCategoria){
			String l = 	"""
							<a href="${item.url}" target="_blank" class='list-group-item'>test7 (linksPorCategoria):${cat} -> ${item}</a>
						"""
			links += l
		}
		render(links)
	}
	
	def categoriaDoLink = {
		def link = Link.findByNome(params.valor)
		def categoria = link.categoria
		/*String resultado = 	"""
				<g:remoteLink class="list-group-item" action="linksPorCategoria"
					controller="main" params="[valor:categoria]" update="mainLinks">testAjax template ${categoria.class}, ${categoria.nome }
				</g:remoteLink>
				<a href="#" class='list-group-item'>test6 (categoriaDoLink): ${categoria}</a>

							"""
		*/
		render(template:'formSelector',
			model:[dados:categoria, destino:'mainLinks', action:'linksPorCategoria', controller:'main'])
		//render(resultado)
	}
	
}
