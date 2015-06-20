//
//  AdministradorNotas.swift
//  Mis Notas
//
//  Created by Andres Sandoval on 13/06/15.
//  Copyright (c) 2015 Andres Sandoval. All rights reserved.
//

import UIKit

var Admin:AdministradorNotas = AdministradorNotas()

struct nota{
    var nombre = "Por defecto"
    var descripcion = "Por defecto"
}

class AdministradorNotas: NSObject {
    
    var notas = [nota]()
    
    func agragarNotas (nombre : String, descripcion : String){
        notas.append(nota(nombre: nombre, descripcion: descripcion))
    }
   
    
}
