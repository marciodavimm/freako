package freako

class Categoria {

	String nome
	
    static constraints = {
		nome(nullable:false, blank:false, unique:true)
    }
	
	static hasMany = [links:Link]
	
	String toString()
	{
		"${this.nome}"
	}
}
