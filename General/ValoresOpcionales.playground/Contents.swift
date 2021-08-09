import UIKit

struct Alumno {

}

let dato1: Int? = 10
let dato2: String = "Kenyi"
let dato3: String? = "Rodrigo"
let dato4: Float = -34.4
let dato5: Alumno = Alumno()

print(dato2)
print(dato3 ?? "ooo")
print(dato1 ?? -1)

let resultado = dato2 + " / " + (dato3 ?? "")
print(resultado)


func sumarV1Numero1(_ n1: Int?, conNumero2 n2: Int?) -> Int {
    
    let suma = (n1 ?? 0) + (n2 ?? 0)
    return suma
}

sumarV1Numero1(nil, conNumero2: nil)


func sumarV2Numero1(_ n1: Int?, conNumero2 n2: Int?) -> Int {
    
    let n1Seguro = n1 ?? 0
    let n2Seguro = n2 ?? 0
    return n1Seguro + n2Seguro
}

sumarV2Numero1(nil, conNumero2: 10)
