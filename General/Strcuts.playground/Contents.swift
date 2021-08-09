import UIKit

struct Curso {
    
    let nombre: String
    
    init(nombre: String) {
        self.nombre = nombre
    }
}

struct Alumno {
    
    static let colegio = "Maria reina"
        
    let nombre: String
    let apellido: String
    var estatura: Float
    var curso: Curso
    
    var nombreCompleto: String {
        "\(self.nombre) \(self.apellido)".uppercased()
    }
    
    init(nombre: String, apellido: String, curso: Curso, estatura: Float = 0) {
        
        self.estatura = estatura
        self.curso = curso
        self.nombre = nombre
        self.apellido = apellido
    }
    
    func mostrarSiEsMayorDeEdad(_ edad: Int) {
        edad >= 18 ? print("Es mayor de edad") : print("es menor de edad")
    }
    
    static func ejecutarFuncionClase() {
        self.colegio
    }
}

let objCurso1 = Curso(nombre: "iOS")
let objCurso2 = Curso(nombre: "Android")

let objAlumno1 = Alumno(nombre: "Kenyi", apellido: "Rodriguez", curso: objCurso1)
let objAlumno2 = Alumno(nombre: "Rodrigo", apellido: "Salas", curso: objCurso2)

objAlumno2.nombreCompleto
objAlumno2.curso.nombre
objAlumno2.mostrarSiEsMayorDeEdad(18)

Alumno.ejecutarFuncionClase()


