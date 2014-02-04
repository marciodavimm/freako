package freako

class Link {

	String nome
	String url
	String descricao
	Integer votosPositivos
	Integer votosNegativos
	Integer visualizacoes
	Integer cliques
	Categoria categoria
	Usuario autor
	String objeto
	byte[] imagem

	String toString(){
		this.nome
	}		
	
	static belongsTo = [Categoria, Usuario]
	static hasMany = [comentarios:Comentario]
	
    static constraints = {
		nome(nullable:false, blank:false)
		url(url:true, nullable:false, blank:false, unique:true)
		descricao(nullable:false, blank:false)
		votosPositivos(min:0, nullable:false)
		votosNegativos(min:0, nullable:false)
		visualizacoes(min:0, nullable:false)
		cliques(min:0, nullable:false)
		objeto(nulable:true, blank:true) 
		imagem(size:0..131072)
    }
}
