import UIKit

//************** Encapsulamiento ***************
/*
 Define los niveles de acceso de los método y propiedades de la misma
 
 internal:
    * Es nivel por defecto de class, structs, propiedades, funciones, etc que defines
    * Es un nivel público dentro del módulo en el que se encuentra lo que acabas de definir
 
 public:
    * Es un nivel público de lo que definas dentro y fuera del módulo
    * NO permite herencia fuera del módulo
    * NO permite override fuera del módulo
 
 open:
    * Es un nivel público de lo que definas dentro y fuera del módulo
    * SI permite herencia fuera del módulo
    * SI permite override fuera del módulo
 
 private:
    * Es un nivel privado dentro de una clase o de un contexto (Mismo archivo o definido por brakets)
 
 fileprivate:
    * Es un nivel privado pero dentro de un mismo archivo
    * Todo lo definido sólo se puede usar dentro del archivo en el cual se definio
    * En un archivo purden existrir declaración de clases, structs, enums, etc
 
 final:
    * Bloquea la herencia
 
 */

class Curso {
    
    let nombre: String
    
    init(nombre: String) {
        self.nombre = nombre
    }
}

class Persona {
    
    let nombre: String
    let apellido: String
    
    var nombreCompleto: String {
        "\(self.nombre) \(self.apellido)".uppercased()
    }
    
    init(nombre: String, apellido: String) {
        self.nombre = nombre
        self.apellido = apellido
    }
}

class Alumno: Persona {
    
    static let colegio = "Maria reina"
        
    var estatura: Float
    var curso: Curso
    
    override var nombreCompleto: String {
        "\(self.apellido), \(self.nombre)".uppercased()
    }
    
    init(nombre: String, apellido: String, curso: Curso, estatura: Float = 0) {
        
        self.estatura = estatura
        self.curso = curso
        super.init(nombre: nombre, apellido: apellido)
    }
    
    func mostrarSiEsMayorDeEdad(_ edad: Int) {
        edad >= 18 ? print("Es mayor de edad") : print("es menor de edad")
    }
    
    class func ejecutarFuncionClase() {
        self.colegio
    }
}

let objCurso1 = Curso(nombre: "iOS")
let objCurso2 = Curso(nombre: "Android")

let objAlumno1 = Alumno(nombre: "Kenyi", apellido: "Rodriguez", curso: objCurso1)
let objAlumno2 = Alumno(nombre: "Rodrigo", apellido: "Salas", curso: objCurso2)

let objPersona: Persona = objAlumno2
objPersona.nombreCompleto

objAlumno2.nombreCompleto
objAlumno2.curso.nombre
objAlumno2.mostrarSiEsMayorDeEdad(18)

Alumno.ejecutarFuncionClase()

