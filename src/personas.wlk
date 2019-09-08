object olivia {

	var gradoDeConcentracion = 4
	var masajesRecibidos = 0

	method actualizarGradoDeConcentracion(cantidad) {
		gradoDeConcentracion = gradoDeConcentracion + cantidad
	}

	method recibirMasajes() {
		const cantidadDeMasajesLimite = 3
		const concentracionPorRecibirMasajesMenorALimite = 2
		const concentracionPorRecibirMasajesMayorOIgualALimite = 5
				
		masajesRecibidos = masajesRecibidos + 1
		
		if (masajesRecibidos < cantidadDeMasajesLimite) {
			self.actualizarGradoDeConcentracion(concentracionPorRecibirMasajesMenorALimite)
		} else {
			self.actualizarGradoDeConcentracion(concentracionPorRecibirMasajesMayorOIgualALimite)
		}
	}

	method darseUnBanioDeVapor() {
		const concentracionPorBanioDeVapor = 1
		
		self.actualizarGradoDeConcentracion(concentracionPorBanioDeVapor)
	}

	method esFeliz() {
		const valorLimiteFelicidad = 7
		
		return gradoDeConcentracion >= valorLimiteFelicidad
	}

	method discutir() {
		const valorLimitePorDiscutir = 4
		const concentracionPorDiscutir = 5
		
		if (gradoDeConcentracion > valorLimitePorDiscutir) {
			gradoDeConcentracion = concentracionPorDiscutir
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
		var nivelDeContracturaActualizado = nivelDeContractura + cantidad
		const nivelDeContracturaLimite = 0
		
		if ((nivelDeContracturaActualizado) > nivelDeContracturaLimite) {
			nivelDeContractura = nivelDeContracturaActualizado
		} else {
			nivelDeContractura = nivelDeContracturaLimite
		}
	}

	method recibirMasajes() {
		const nivelDeContracturaPorMasajes = -2
		
		self.actualizarNivekDeContractura(nivelDeContracturaPorMasajes)
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
		const cantidadDeTrabajosLimite = 0
		const nivelDeContracturaPorCodear = 1
		
		self.setQuemadoParaProgramar()
		
		if (cantidadDeTrabajos == cantidadDeTrabajosLimite) {
			self.actualizarNivekDeContractura(nivelDeContracturaPorCodear)
			cantidadDeTrabajos = cantidadDeTrabajos + 1
		}
	}

	method diaDeTrabajo() {
		self.codear()
		self.comerseUnBigMac()
		self.codear()
	}

}