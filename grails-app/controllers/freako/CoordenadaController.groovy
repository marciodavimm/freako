package freako

import org.springframework.dao.DataIntegrityViolationException

class CoordenadaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }
	
	def detalhes(){
		def coordenada = Coordenada.get(params.id)
		println coordenada.nome
		
		if (!coordenada) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordenada.label', default: 'Coordenada'), id])
			redirect(action: "list")
			return
		}

		render(template:'detalhes', model:[coordenadaInstance:coordenada])
	}
	

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [coordenadaInstanceList: Coordenada.list(params), coordenadaInstanceTotal: Coordenada.count()]
    }

    def create() {
        [coordenadaInstance: new Coordenada(params)]
    }

    def save() {
		println('\n\tteste de criacao:')
		println('params.latitude = ' + params.latitude + ', ' + params.latitude.class)
		println('params.longitude = '+ params.longitude + ', ' + params.longitude.class)
        def coordenadaInstance = new Coordenada(params)
		println('teste: ' + coordenadaInstance)
		println('coordenadaInstance.latitude = ' + coordenadaInstance.latitude + ', ' + coordenadaInstance.latitude.class)
		println('coordenadaInstance.longitude = '+ coordenadaInstance.longitude + ', ' + coordenadaInstance.longitude.class)
        if (!coordenadaInstance.save(flush: true)) {
            render(view: "create", model: [coordenadaInstance: coordenadaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'coordenada.label', default: 'Coordenada'), coordenadaInstance.id])
        redirect(action: "show", id: coordenadaInstance.id)
    }

    def show(Long id) {
		/*
		def coordenada = Coordenada.get(id)
		if (!coordenada) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordenada.label', default: 'Coordenada'), id])
			redirect(action: "list")
			return
		}
		render(view:'show', model:[coordenadaInstance:coordenada])
        */
		
        def coordenadaInstance = Coordenada.get(id)
        if (!coordenadaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordenada.label', default: 'Coordenada'), id])
            redirect(action: "list")
            return
        }

        //render(template:'detalhes', model:[coordenadaInstance: coordenadaInstance])
		[coordenadaInstance: coordenadaInstance]
    }

    def edit(Long id) {
        def coordenadaInstance = Coordenada.get(id)
        if (!coordenadaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordenada.label', default: 'Coordenada'), id])
            redirect(action: "list")
            return
        }

        [coordenadaInstance: coordenadaInstance]
    }

    def update(Long id, Long version) {
        def coordenadaInstance = Coordenada.get(id)
        if (!coordenadaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordenada.label', default: 'Coordenada'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (coordenadaInstance.version > version) {
                coordenadaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'coordenada.label', default: 'Coordenada')] as Object[],
                          "Another user has updated this Coordenada while you were editing")
                render(view: "edit", model: [coordenadaInstance: coordenadaInstance])
                return
            }
        }

        coordenadaInstance.properties = params

        if (!coordenadaInstance.save(flush: true)) {
            render(view: "edit", model: [coordenadaInstance: coordenadaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'coordenada.label', default: 'Coordenada'), coordenadaInstance.id])
        redirect(action: "show", id: coordenadaInstance.id)
    }

    def delete(Long id) {
		println('delete id='+id)
		
        def coordenadaInstance = Coordenada.get(id)
        if (!coordenadaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordenada.label', default: 'Coordenada'), id])
            redirect(action: "list")
            return
        }

        try {
            coordenadaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'coordenada.label', default: 'Coordenada'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'coordenada.label', default: 'Coordenada'), id])
            redirect(action: "show", id: id)
        }
    }
}
