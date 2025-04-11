import wollok.vm.*
import lugares.*
object alambiqueVeloz {
    var combustible = 100

    method esVeloz() {
        return true
    }
    method combustible() {
        return combustible
    }
    method consumirCombustible(unLugar) {
        combustible = 0.max(combustible - unLugar.distancia())
    }
}

object superChatarraEspacial {
    var combustible = 500
    
    method cañones() {
        return 4
    }
    method esVeloz() {
        return true
    }
    method consumirCombustible(unLugar) {
        combustible = 0.max((combustible - 10 * self.cañones())  - unLugar.distancia())
    }
}

object antiguaBlindada {
    var combustible = 250
    var gangsters = 3
    var esVeloz = false

    method esVeloz() {
        return esVeloz
    }
    method gangsters() {
        return gangsters
    }
    method sumarGangster() {
        if (combustible >= 100) {
            gangsters =+ 1
        }
    }
    method cambiarVeloz() {
        if (gangsters > 7) {
            esVeloz = false
        }
        else {
            esVeloz = true
        }
    }
    method combustible() {
        return combustible
    }
    method consumirCombustible(unLugar) {
        combustible = 0.max((combustible - self.gangsters())  - unLugar.distancia())
    }
}

object superConvertible {
    var combustible = 250
    var convertido = false
    var esVeloz = false
    
    method esVeloz() {
        return esVeloz
    }
    method cambiarConvertido() {
        if (combustible >= 250) {
            convertido = true
        }
        else {
            convertido = false
        }
    }
    method estaConvertido() {
        return convertido   
    }
    method cambiarVeloz() {
        if (self.estaConvertido()) {
            esVeloz = true
        }
        else {
            esVeloz = false
        }
    }
    method combustible() {
        return combustible
    }
    method consumirCombustible(unLugar) {
        combustible = 0.max(combustible - unLugar.distancia())
    }
}