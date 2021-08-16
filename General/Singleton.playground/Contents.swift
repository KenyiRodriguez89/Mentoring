import UIKit

//************************* SINGLETON ************************
/*
    
    - Es una variable statica o de clase dentro de su  class o struct, genera una instancia de la clase o struct
    - Es la creación de una instancia única de una clase
    - No deberias poder crear mas instancias de esa clase que tiene un singleton (un constructor privado)
    - La instancia del singleton no deberias modificarla (read only), las propiedades sin son modificables
    - Se aplica a clases y estructuras
 
    VENTAJAS:
        * Nos permite ahorrar memoria, ya que tenemos una única instancia de un class o un struct
        * Tenemos acceso a dicha instancia desde cualquier lado de la aplicación
        * Podemos modificar las propiedades de dicha instancia desde cualquier lado
        * Podemos usar los métodos de dicha instancia desde cualquier lado
    
    DEVENTAJAS (Anti patron de diseño de Software):
        * La instancia siempre esta en memoria hasta que la aplicación muere, tener muchos singletons en la aplicación generar una gran carga
        * Al estar en memoria, pueden hacer un spoofing a la aplicación y ver que cosas existe en la memoria y ver los datos almacenados.
 
 */


extension StyleApplication {
    
    enum Theme {
        case dark
        case ligth
    }
}
 
struct StyleApplication {
    
    static var shared = StyleApplication()
    
    var theme: Theme = .ligth
    
    var background: UIColor {
        self.theme == .ligth ? .white : .darkGray
    }
    
    var textColor: UIColor {
        self.theme == .ligth ? .black : .white
    }
    
    func printNameStyle() {
        print("ESTAMOS EN \(self.theme == .ligth ? "LIGTH": "DARK")")
    }
    
    private init() { }
}

StyleApplication.shared.printNameStyle()
StyleApplication.shared.theme = .dark
StyleApplication.shared.printNameStyle()

StyleApplication.shared.background
StyleApplication.shared.textColor
