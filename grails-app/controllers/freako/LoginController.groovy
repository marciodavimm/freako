package freako

class LoginController {

	def index() {
		redirect(action:'entrar')
	}
	
	def entrar() {	}

	def login(String login, String senha){
		def usuario = Usuario.findByLoginAndHashSenha(login,senha.encodeAsPassword())
		if(usuario){
			session.usuario = usuario
			redirect(uri:"/")
		}else{
			render("erro no login")
		}
	}

	def logout(){
		if(!session.usuario){
			render("nenhum usuario logado.")
		}
		else{
			session.invalidate()
			render("logout realizado!")
			redirect(uri:"/")
		}
	}
}
