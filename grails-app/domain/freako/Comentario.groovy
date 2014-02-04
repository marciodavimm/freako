package freako

class Comentario {

	String nomeVisitante
	String email
	Date data
	Link link
	String mensagem
	
    static constraints = {
		nomeVisitante(nullable:false, blank:false)
		email(nullable:false, blank:false, email:true)
		data(nullable:false)
		mensagem(nullable:false, blank:false)
    }
	
	static belongsTo = Link
}
