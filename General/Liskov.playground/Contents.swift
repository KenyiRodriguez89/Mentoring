import UIKit

class Rectangulo {
    
    let ancho: Int
    let alto: Int
    
    var area: Int {
        self.ancho * self.alto
    }
    
    init(ancho: Int, alto: Int) {
        self.ancho = ancho
        self.alto = alto
    }
}

class Cuadraro: Rectangulo {
    
    init(lado: Int) {
        super.init(ancho: lado, alto: lado)
    }
}

let objFigura: Rectangulo = Cuadraro(lado: 4)
print(objFigura.area)
