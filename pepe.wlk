object gerente {  
}

object cadete {  
}

object pepe {
    var bonoPorResultados = 0 
    var bonoPorPresentismo = 0  
    var categoria = gerente  
    var neto = 0

    method neto() {
        if (categoria == gerente)
           neto = neto + 15000
        else
           neto = neto +  20000
    }
    method sueldo() {
        neto + bonoPorResultados + bonoPorPresentismo
    }

    method bonoPorResultados() {

      
    }
}
