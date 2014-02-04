package freako

class MyFreakoTagLib {
	def anoAtual = {
		out << new Date().format("yyyy")
	}
	
	def copyright ={ attrs, body ->
		out << "&copy; " + attrs.anoInicio + ' - ' + anoAtual() + ' ...  '  + body() + ' ...'		
	}
	
}
