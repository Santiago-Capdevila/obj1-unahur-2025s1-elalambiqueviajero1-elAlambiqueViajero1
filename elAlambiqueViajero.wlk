import lugares.*
import vehiculos.*
import recuerdos.*

object luke {
    var lugaresVisitados = 0
    var recuerdoActual = llaveroTorreEiffel
    var vehiculo = alambiqueVeloz

    method recuerdo(lugarVisitado) {
        recuerdoActual = lugarVisitado.recuerdo()
    }
    method cambiarVehiculo(unVehiculo) {
        vehiculo = unVehiculo
    }
    method vehiculo() {
        return vehiculo
    }
    method viajar(unLugar) {
        if (unLugar.visitarCon(vehiculo)) {
            lugaresVisitados =+ 1
            recuerdoActual = unLugar.recuerdo()
            vehiculo.consumirCombustible(unLugar)
        }
    }
    method lugaresVisitados() {
        return lugaresVisitados
    }
}