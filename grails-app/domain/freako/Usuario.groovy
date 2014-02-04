package freako

class Usuario {

	String login
	String hashSenha
	String email
	String senha
	
	String toString(){
		this.login
	}
	
	void setSenha(String valor)
	{
		this.senha = valor
		if(valor != null)
			this.hashSenha = valor.encodeAsPassword()
	}
	
	static transients = ['senha']
	
	static hasMany = [links:Link, locais:Coordenada]
	
	
    static constraints = {
		login(nullable:false, blank:false, unique:true)
		hashSenha(nullable:false, blank:false)
		email(email:true)
		senha(nullable:false, blank:false, size:3..10)
    }	
}
