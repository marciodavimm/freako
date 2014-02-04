package freako

class AcessoFilters {

    def filters = {
		
		acesso(controller:'comentario|link|categoria|coordenada', action:'*') {
		//acesso(controller:"*", action:'*') {
		//acesso(controller:"login", invert:true) {
		//acesso(controller:'usuario', action:'login', invert:true) {
		//acesso(uri:'/**') {
			before = {
				if(!session.usuario && !controllerName?.equals("login") ){
				//if(!session.usuario && !actionName?.equals("login") ){
					redirect(controller:"login")
					return false
				}
			};
		}
		/*
        all(controller:'*', action:'*') {
            before = {

            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
        */
    }
}
