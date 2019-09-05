import personas.*

object spa {
	method atender(persona) {
		// hay que hacer que la persona reciba masajes...
		persona.recibirMasajes() 
		// ...y se dé un baño de vapor
		persona.darseUnBanioDeVapor()
	}
}