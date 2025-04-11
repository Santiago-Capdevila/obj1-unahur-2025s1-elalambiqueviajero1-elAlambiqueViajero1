import vehiculos.*
import recuerdos.*
import elAlambiqueViajero.*



object paris {
    method recuerdo() {
        return llaveroTorreEiffel
    }
    method visitarCon(unVehiculo) {
        return unVehiculo.combustible() > 10
    }
}

object buenosAires {
    var elPresidenteDaYerba = false
    method recuerdo() {
        if (elPresidenteDaYerba) {
            return mate.conYerba()
        }
        return mate
    }
    method cambiarEstadoPresidente(unValor) {
        elPresidenteDaYerba = unValor
    }
    method presidenteDaYerba() {
        return elPresidenteDaYerba
    }
    method visitarCon(unVehiculo) {
        return unVehiculo.esVeloz()
    }
}

object bagdad {
    var recuerdo = petroleo

    method recuerdo() {
        return recuerdo
    }
    method cambiarRecuerdo(unRecuerdo) {
        recuerdo = unRecuerdo
    }
    method visitarCon(unVehiculo) {
        return true
    }
}

object lasVegas {
    var homenaje = paris

    method recuerdo() {
        return homenaje.recuerdo()
    }
    method cambiarHomenaje(unLugar) {
        homenaje = unLugar
    }
    method visitarCon(unVehiculo) {
        return homenaje.puedeVisitar(unVehiculo)
    }
}

object tokyo {
    method recuerdo() {
        return tamagochi
    }
    method visitarCon(unVehiculo) {
        return luke.lugaresVisitados() > 4
    }
}