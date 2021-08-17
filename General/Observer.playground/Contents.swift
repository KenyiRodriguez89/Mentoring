import UIKit

typealias Evaluacion = (alumno: Alumno, examen: Examen)

class Examen {
    
    let nombreCurso: String
    
    init(nombreCurso: String) {
        self.nombreCurso = nombreCurso
    }
}

class Alumno {
    
    let nombre: String
    let apellido: String
    
    var nombreCompleto: String {
        "\(self.nombre) \(self.apellido)"
    }
    
    init(nombre: String, apellido: String) {
        self.nombre = nombre
        self.apellido = apellido
    }
    
    func darExamen(_ examen: Examen) {
        //Terminas de dar el examen
        print("Empezando examen")
        print("Dando examen")
        self.terminarExamen(examen)
    }
    
    private func terminarExamen(_ examen: Examen) {
        
        print("avisar al profe que termine mi examen")
        let evaluacion: Evaluacion = (self, examen)
        NotificationCenter.default.post(name: .alumnoTerminaExamen, object: evaluacion)
    }
}

class Profesor {
    
    let nombre: String
    let apellido: String
    
    var nombreCompleto: String {
        "\(self.nombre) \(self.apellido)"
    }
    
    init(nombre: String, apellido: String) {
        self.nombre = nombre
        self.apellido = apellido
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.revisarExamen(_:)), name: .alumnoTerminaExamen, object: nil)
    }
    
    @objc private func revisarExamen(_ notification: Notification) {
        
        guard let evaluacion = notification.object as? Evaluacion else {
            print("No se pudo recuperar la evaluación")
            return
        }
        
        print("El profesor \(self.nombreCompleto) revisará el examen de \(evaluacion.alumno.nombreCompleto) en el curso \(evaluacion.examen.nombreCurso)")
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
//        NotificationCenter.default.removeObserver(self, name: .alumnoTerminaExamen, object: nil)
    }
}


extension NSNotification.Name {
    static let alumnoTerminaExamen = Notification.Name(rawValue: "alumnoTerminaExamen")
}


let objProfesor1 = Profesor(nombre: "Kenyi", apellido: "Rodriguez")
let objProfesor2 = Profesor(nombre: "Eduardo", apellido: "Medina")

let objAlumno = Alumno(nombre: "Rodrigo", apellido: "Salas")
let objExamen = Examen(nombreCurso: "iOS")
objAlumno.darExamen(objExamen)
