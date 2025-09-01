object pepe {
    var categoria = cadete
    var faltasPorMes = 0
    var tipoDeBonoPorResultado = bonoPorResultados1
    var tipoDeBonoPorPresentismo = bonoPorPresentismoNormal

    method neto() = categoria.sueldo()

    method sueldo() {
        return self.neto() + tipoDeBonoPorResultado.sueldo(self) + tipoDeBonoPorPresentismo.sueldo(self)
    }

    method categoriaDePepe() {
        return categoria
    }

    method cambiarCategoria(unaCategoria) {
        categoria = unaCategoria
    }

    method bonoPorPresentismo(_bonoPorPresentismo) {
        tipoDeBonoPorPresentismo = _bonoPorPresentismo
    }

    method bonoPorResultados(_bonoPorResultado) {
        tipoDeBonoPorResultado = _bonoPorResultado
    }

    method faltas() {
        return faltasPorMes 
    }

    method agregarFaltas(cantidad) {
        faltasPorMes = faltasPorMes + cantidad 
    }


}

object gerente {
    method sueldo() = 15000
}

object cadete {
    method sueldo() = 20000
}

object bonoPorResultados1 {
    method sueldo(empleado) = (empleado.neto() * 0.1)  
}

object bonoPorResultados2 {
    method sueldo(empleado) = 800
}

object bonoPorResultados3 {
    method sueldo(empleado) = 0
}

object bonoPorPresentismoNormal {
    method sueldo(empleado) = if (empleado.faltas() == 0) {2000}
                        else if (empleado.faltas() == 1) {1000}
                            else {0}
}

object bonoPorPresentismoAjuste {
    method sueldo(empleado) = if (empleado.faltas() == 0) {100}
                            else {0}
}

object bonoPorPresentismoDemagogico {
    method sueldo(empleado) = if (empleado.neto() < 18000) {500}
                            else {300}
}

object bonoPorPresentismoNulo {
    method sueldo() = 0 
}
