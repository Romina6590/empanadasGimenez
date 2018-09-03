object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
// se rompe pagarA() porque no entiende el msj cobrarSueldo
// tengo q agregar ese msj a baigorria y a gimenez
	var sueldo = 15000
	var totalCobrado = 0
	method sueldo() { 
		return sueldo
	}
	method sueldo(nuevoValor) { 
		sueldo = nuevoValor
	}
	method cobrarSueldo(){
		totalCobrado += sueldo
	}
	method totalCobrado(){
		return totalCobrado
		
	}
}
//baigorria tiene que entender el msj cobrarSueldo, pero no hace nada.

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var deuda = 0
	var dinero = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method vendioXEmpanadas(cuantas){
		cantidadEmpanadasVendidas = cuantas
	}
	
	method cobrarSueldo(){
		dinero = self.sueldo()
		self.pagarDeudas()
		
	}
	
	method pagarDeudas(){
		if (deuda>=dinero){
			deuda -= dinero
			dinero = 0
		}
		else{
			dinero -= deuda
			deuda = 0
		}
	}
	method gastar(cuanto){
		if(dinero >= cuanto){
			dinero -= cuanto 
		}
		else{
			deuda += cuanto - dinero
			dinero = 0
		}
		
	}
	method totalDeuda(){
		return deuda
	}
	method totalDinero(){
		return dinero
	}
}

object galvan {
	var dinero = 300000
	method dinero() { 
		return dinero
	}
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}

