class UrlMappings {

	static mappings = {
		name hello: "/hello"(view:"/extras/hello")
		name tbs: "/tbs"(view:"/extras/tbs")
		name tbsCarousel: "/tbs-carousel"(view:"/extras/tbs-theme-carousel")
		name appTests: "/app-tests"(view:"/extras/app-tests")
		
		
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
