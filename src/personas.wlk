/*... completar ...*/
object olivia {
	var property gradoDeConcentracion = 4
	var masajesRecibidos=0
	method recibirMasajes(){
		const primerosMasajes = 2
		const concentracionPrimerosMasajes = 2
		const concentracionMasDe3Masajes = 5
		masajesRecibidos = masajesRecibidos+1
		if(masajesRecibidos<=primerosMasajes) gradoDeConcentracion = gradoDeConcentracion+concentracionPrimerosMasajes else gradoDeConcentracion= gradoDeConcentracion + concentracionMasDe3Masajes	
	}
	
	method darseUnBanioDeVapor(){gradoDeConcentracion=gradoDeConcentracion+1}
	
	method esFeliz() = (gradoDeConcentracion>=7)
	
	method discutir(){
		if(gradoDeConcentracion>5){
			gradoDeConcentracion = 5
		}
	}
}

/*... completar ...*/
object adriano {
	var property nivelDeContractura = 5
	var property frescoParaProgramar = false
	var primeraVezQuePrograma=true
	
	method refrescar(){frescoParaProgramar=true}
	
	method darseUnBanioDeVapor(){
		self.refrescar()
	}
	
	method recibirMasajes(){
		const descontracturaPorMasaje=2
		if(nivelDeContractura>descontracturaPorMasaje) nivelDeContractura=nivelDeContractura-descontracturaPorMasaje else nivelDeContractura=0
	}
	
	method comerseUnBigMac(){
		frescoParaProgramar=true
	}
	
	method codear(){
		if(primeraVezQuePrograma){
			nivelDeContractura = nivelDeContractura+1
			primeraVezQuePrograma=false
		}
		frescoParaProgramar = false
	}
	
	method diaDeTrabajo(){
		self.codear()
		self.comerseUnBigMac()
		self.codear()
	}
}
