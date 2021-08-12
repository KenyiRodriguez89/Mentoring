import UIKit

class Alumno {
    
    let nombre: String
    let apellido: String
    let dni: String = ""
    
    var nombreCompleto: String {
        self.nombre + " " + self.apellido
    }
    
    func obtenerIniciales() -> String {
        (self.nombre.prefix(1) + self.apellido.prefix(1)).uppercased()
    }
    
    init(nombre: String, apellido: String) {
        self.nombre = nombre
        self.apellido = apellido
    }
}


class AlumnoDB {
    
    func guardarEnBaseDatosLocal(_ objAlumno: Alumno) {
        //Aquí se usa la tecnología o framework requerido
    }
}

let obj = Alumno(nombre: "Kenyi", apellido: "Rodriguez")

let bd = AlumnoDB()
bd.guardarEnBaseDatosLocal(obj)
