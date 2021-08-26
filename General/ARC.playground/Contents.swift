import UIKit

class Persona: NSObject {
    
    let nombre: String
    let paterno: String
    let materno: String
    
    init(nombre: String, paterno: String, materno: String) {
        self.nombre = nombre
        self.paterno = paterno
        self.materno = materno
    }
}

class Papa: Persona {
    var hijo: Hijo?
    
    deinit {
        print("Se va el papa")
    }
}

class Mama: Persona {
    var hijo: Hijo?
    
    deinit {
        print("Se va la mama")
    }
}

class Hijo: Persona {
    
    let papa: Papa
    unowned let mama: Mama

    init(nombre: String, papa: Papa, mama: Mama) {
        
        self.papa = papa
        self.mama = mama
        super.init(nombre: nombre, paterno: papa.paterno, materno: mama.paterno)
    }
    
    deinit {
        print("Se va el hijo")
    }
}

//***************** Enlazar relación ********************
var papa: Papa? = Papa(nombre: "Kenyi", paterno: "Rodriguez", materno: "Vergara")
var mama: Mama? = Mama(nombre: "Flavia", paterno: "Figueroa", materno: "Castillo")
var hijo: Hijo? = Hijo(nombre: "Athos", papa: papa!, mama: mama!)

papa?.hijo = hijo
mama?.hijo = hijo
//******************************************************


papa = nil
mama = nil
hijo = nil

hijo?.nombre
papa?.hijo?.nombre
mama?.hijo?.nombre

papa?.nombre
mama?.nombre

