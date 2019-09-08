object olivia {

	var gradoDeConcentracion = 4
	var masajesRecibidos = 0

	method actualizarGradoDeConcentracion(cantidad) {
		gradoDeConcentracion = gradoDeConcentracion + cantidad
	}
	
	method recibirMasajes() {
		masajesRecibidos = masajesRecibidos + 1
		
		if (masajesRecibidos < 3) {
			self.actualizarGradoDeConcentracion(2)
		} else {
			self.actualizarGradoDeConcentracion(5)
		}
	}	

	method darseUnBanioDeVapor() {
		self.actualizarGradoDeConcentracion(1)
	}

	method esFeliz() {
		return gradoDeConcentracion >= 7
	}
	
	method discutir(){
		if (gradoDeConcentracion > 4){
			gradoDeConcentracion = 5
		}
	}
	
	method gradoDeConcentracion() = gradoDeConcentracion
	
}

/*... completar ...*/
object adriano {

}

