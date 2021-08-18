import UIKit

class Examen {
    
    let nombreCurso: String
    
    init(nombreCurso: String) {
        self.nombreCurso = nombreCurso
    }
}

protocol AlumnoDelegate {
    
    func alumno(_ objAlumno: Alumno, empezoExamen objExamen: Examen)
    func alumno(_ objAlumno: Alumno, terminoExamen objExamen: Examen)
}

class Alumno {
    
    var delegate: AlumnoDelegate?
    
    let nombre: String
    let apellido: String
    
    var nombreCompleto: String {
        "\(self.nombre) \(self.apellido)"
    }
    
    init(nombre: String, apellido: String) {
        self.nombre = nombre
        self.apellido = apellido
    }
    
    func darExamen(_ examen: Examen, delagadoEnRevision delegate: AlumnoDelegate) {
        self.delegate = delegate
        self.delegate?.alumno(self, empezoExamen: examen)
        //Desarrolla el examen
        self.delegate?.alumno(self, terminoExamen: examen)
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
    }
    
    func revisarExamen(_ objExamen: Examen, objAlumno: Alumno) {
        print("El profesor \(self.nombreCompleto) revisará el examen de \(objAlumno.nombreCompleto) en el curso \(objExamen.nombreCurso)")
    }
}

extension Profesor: AlumnoDelegate {
    
    func alumno(_ objAlumno: Alumno, empezoExamen objExamen: Examen) {
        print("El alumno \(objAlumno.nombreCompleto) empezó el examen del curso \(objExamen.nombreCurso)")
    }
    
    func alumno(_ objAlumno: Alumno, terminoExamen objExamen: Examen) {
        self.revisarExamen(objExamen, objAlumno: objAlumno)
    }
}

let objProfesor1 = Profesor(nombre: "Kenyi", apellido: "Rodriguez")

let objExamen = Examen(nombreCurso: "iOS")
let objAlumno = Alumno(nombre: "Rodrigo", apellido: "Salas")
objAlumno.darExamen(objExamen, delagadoEnRevision: objProfesor1)
