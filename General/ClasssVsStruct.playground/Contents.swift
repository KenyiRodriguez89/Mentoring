import UIKit

struct AlumnoStruct {
            
    var nombre: String
    let apellido: String
    
    init(nombre: String, apellido: String) {
        
        self.nombre = nombre
        self.apellido = apellido
    }
}

class AlumnoClass {
            
    var nombre: String
    let apellido: String
    
    init(nombre: String, apellido: String) {
        
        self.nombre = nombre
        self.apellido = apellido
    }
}

var objAlumnoStruct1 = AlumnoStruct(nombre: "Kenyi", apellido: "Rodriguez")
objAlumnoStruct1 = AlumnoStruct(nombre: "Kenyi", apellido: "Rodriguez")

var objAlumnoStruct2 = objAlumnoStruct1
print(objAlumnoStruct2.nombre)

objAlumnoStruct1.nombre = "Rodrigo"
//objAlumnoStruct1.apellido = "dfddf"

print(objAlumnoStruct1.nombre)
print(objAlumnoStruct2.nombre)









let objAlumnoClass1 = AlumnoClass(nombre: "Kenyi", apellido: "Rodriguez")

let objAlumnoClass2 = objAlumnoClass1
print(objAlumnoClass2.nombre)

objAlumnoClass1.nombre = "Rodrigo"
print(objAlumnoClass2.nombre)


