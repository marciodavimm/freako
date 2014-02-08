package freako

import org.springframework.dao.DataIntegrityViolationException

class UsuarioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }
	
	def hello = {
		redirect(uri:"/h")
	}
	def helloDirect={
		redirect(view:"extras/hello.gsp")
	}
	
	/*
	def login = {
		def loginUsuario = params["login"]
		def senhaUsuario = params.senha
		
		def usuario = Usuario.findByLoginAndHashSenha(loginUsuario,senhaUsuario.encodeAsPassword())
		//def usuario = Usuario.findByLoginAndHashSenha(login,senha.encodeAsPassword())
		if(usuario){
			session["usuario"] = usuario
			redirect(action:"list", controller:"link")
		}
		else{
			//flash.message = "Para acessar essa pagina voce deve se logar antes!"
			render("usuário não encontrado no sistema!")
		}
		
	}
	*/

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [usuarioInstanceList: Usuario.list(params), usuarioInstanceTotal: Usuario.count()]
    }

    def create() {
        [usuarioInstance: new Usuario(params)]
    }

    def save() {
        def usuarioInstance = new Usuario(params)
        if (!usuarioInstance.save(flush: true)) {
            render(view: "create", model: [usuarioInstance: usuarioInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuarioInstance.id])
        redirect(action: "show", id: usuarioInstance.id)
    }

    def show(Long id) {
        def usuarioInstance = Usuario.get(id)
        if (!usuarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
            redirect(action: "list")
            return
        }

        [usuarioInstance: usuarioInstance]
    }

    def edit(Long id) {
        def usuarioInstance = Usuario.get(id)
        if (!usuarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
            redirect(action: "list")
            return
        }

        [usuarioInstance: usuarioInstance]
    }

    def update(Long id, Long version) {
        def usuarioInstance = Usuario.get(id)
        if (!usuarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (usuarioInstance.version > version) {
                usuarioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'usuario.label', default: 'Usuario')] as Object[],
                          "Another user has updated this Usuario while you were editing")
                render(view: "edit", model: [usuarioInstance: usuarioInstance])
                return
            }
        }

        usuarioInstance.properties = params

        if (!usuarioInstance.save(flush: true)) {
            render(view: "edit", model: [usuarioInstance: usuarioInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuarioInstance.id])
        redirect(action: "show", id: usuarioInstance.id)
    }

    def delete(Long id) {
        def usuarioInstance = Usuario.get(id)
        if (!usuarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
            redirect(action: "list")
            return
        }

        try {
            usuarioInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
            redirect(action: "show", id: id)
        }
    }
}
