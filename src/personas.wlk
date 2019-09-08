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

	method discutir() {
		if (gradoDeConcentracion > 4) {
			gradoDeConcentracion = 5
		}
	}

	method gradoDeConcentracion() = gradoDeConcentracion

}

object adriano {

	var nivelDeContractura = 5
	var frescoParaProgramar = false
	var cantidadDeTrabajos = 0
	
	method frescoParaProgramar() {
		return frescoParaProgramar
	}

	method nivelDeContractura() {
		return nivelDeContractura
	}
	
	method actualizarNivekDeContractura(cantidad) {
		if ((nivelDeContractura + cantidad) > 0) {
			nivelDeContractura = nivelDeContractura + cantidad
		} else {
			nivelDeContractura = 0
		}
	}

	method recibirMasajes() {
		self.actualizarNivekDeContractura(-2)
	}

	method setFrescoParaParaProgramar() {
		frescoParaProgramar = true
	}

	method setQuemadoParaProgramar() {
		frescoParaProgramar = false
	}

	method darseUnBanioDeVapor() {
		self.setFrescoParaParaProgramar()
	}

	method comerseUnBigMac() {
		self.setFrescoParaParaProgramar()
	}
	
	method codear() {
		self.setQuemadoParaProgramar()
		
		if (cantidadDeTrabajos == 0) {
			self.actualizarNivekDeContractura(1)
			cantidadDeTrabajos =  cantidadDeTrabajos + 1
		}
	}

	method diaDeTrabajo() {
		self.codear()
		self.comerseUnBigMac()
		self.codear()
	}

}

