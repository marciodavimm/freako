package freako

class Coordenada {
	
	String nome
	String local
	BigDecimal latitude
	BigDecimal longitude
	Usuario autor
	
	static belongsTo = [Usuario]
	
	String toString(){
		this.nome
	}
	
	// nao usado...
	BigDecimal formatarCoordenada(valor){
		String str = valor.toString().replace('.',',')
		new BigDecimal(str)
	}
	
    static constraints = {
		nome(nullable:false, blank:false, unique:true)
		local(nullable:true, blank:true, unique:false)
		latitude(min:new BigDecimal(-180), max:new BigDecimal(180), scale:10, nullable:false)
		//latitude( nullable:true)
		longitude(min:new BigDecimal(-90), max:new BigDecimal(90), scale:10, nullable:false)
		//longitude( nullable:true)
		autor(nullable:false, blank:false, unique:false)
    }
}
