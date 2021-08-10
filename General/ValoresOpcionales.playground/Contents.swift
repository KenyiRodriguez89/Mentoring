import UIKit

struct Alumno {

}

let dato1: Int? = 10
let dato2: String = "Kenyi"
let dato3: String? = "Rodrigo"
let dato4: Float = -34.4
let dato5: Alumno = Alumno()

print(dato2)
print(dato3 ?? "ooo")
print(dato1 ?? -1)

let resultado = dato2 + " / " + (dato3 ?? "")
print(resultado)


func sumarV1Numero1(_ n1: Int?, conNumero2 n2: Int?) -> Int {
    
    let suma = (n1 ?? 0) + (n2 ?? 0)
    return suma
}

sumarV1Numero1(nil, conNumero2: nil)


func sumarV2Numero1(_ n1: Int?, conNumero2 n2: Int?) -> Int {
    
    let n1 = n1 ?? 0
    let n2 = n2 ?? 0
    return n1 + n2
}

sumarV2Numero1(nil, conNumero2: 10)


//****************** guard let / guard var ********************
/*
    - Sólo funciona dentro de un método o función
    - Sirve para crear variables seguras a partir de una insegura y realizar validaciones de flujo como si fuera un if
    - En caso detecte un error en creación de la variable segura o condiciones, ésta ejecuta un flujo de error
    - Al ejecutar el flujo de error, es obligatorio terminarlo con un return
    - Las variables seguras que se crean, estan creadas dentro del contexto actual del guard
 */

func sumar(n1: Int?, n2: Int?) {
    
    guard let n1 = n1 else {
        print("Ingrese número 1")
        return
    }

    guard let n2 = n2 else {
        print("Ingrese número 2")
        return
    }

    let suma = n1 + n2
    print("La suma es: \(suma)")
}

typealias UserRegister = (message: String, canAdded: Bool)

func registrarUsuario(nombre: String?, apellido: String?) -> UserRegister {
    
    guard let nombre = nombre, nombre != "" else {
        return ("Ingrese un nombre correcto", false)
    }
    
    guard let apellido = apellido, apellido.count != 0 else {
        return ("Ingrese un apellido correcto", false)
    }
    
    return ("El usuario \(nombre) \(apellido) se creo correctamente", true)
}

let txtNombre = UITextField()
txtNombre.text = "Kenyi"
let txtApellido = UITextField()

let infoProcces = registrarUsuario(nombre: txtNombre.text, apellido: txtApellido.text)
print(infoProcces.message)
print(infoProcces.canAdded ? "SE AGREGO" : "OCURRIO UN ERROR")



typealias Persona = (nombre: String, apellido: String, dni: String)
let datos: Persona = ("Rodrigo", "Salas", "9876543")
datos.apellido
datos.nombre
datos.dni
