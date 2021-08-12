import UIKit

protocol Persona {
    
    var nombre: String { get set }
    var apellido: String { get set }
    var numeroDni: String { get set }
    
    func brindarNombre()
}

extension Persona {
    func brindarNombre() {
        print("\(self.nombre) \(self.apellido)")
    }
}

protocol Empleado {
    var codigoEmpleado: String { get set }
    var sede: String { get set }
    
    func marcarTarjeta()
}

extension Empleado where Self: Persona {
    
    func marcarTarjeta() {
        print("\(self.nombre) \(self.apellido) marcó tarjeta")
    }
}

struct Profesor: Persona, Empleado {

    var nombre: String
    var apellido: String
    var numeroDni: String = ""
    var codigoEmpleado: String = ""
    var sede: String = ""
    var especialidad: String = ""
    
    init(nombre: String, apellido: String) {
        self.nombre = nombre
        self.apellido = apellido
    }
}

struct Alumno: Persona {
    
    var nombre: String
    var apellido: String
    var numeroDni: String = ""
    
    init(nombre: String, apellido: String) {
        self.nombre = nombre
        self.apellido = apellido
    }
    
    func brindarNombre() {
        print("\(self.apellido), \(self.nombre)")
    }
}

struct Auxiliar: Persona, Empleado {
    
    var nombre: String
    var apellido: String
    var numeroDni: String = ""
    var codigoEmpleado: String = ""
    var sede: String = ""
    
    init(nombre: String, apellido: String) {
        self.nombre = nombre
        self.apellido = apellido
    }
}

let objProf = Profesor(nombre: "Rodrigo", apellido: "Salas")
let objAlumn = Alumno(nombre: "Kenyi", apellido: "Rodriguez")
let objAux = Auxiliar(nombre: "Eduardo", apellido: "Medina")

let arrayPersonas: [Empleado] = [objProf, objAux]

for obj in arrayPersonas {
    obj.marcarTarjeta()
}
