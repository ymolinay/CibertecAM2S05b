//
//  Escritor.swift
//  Session05b
//
//  Created by DAMII on 3/12/24.
//

extension Escritor {
    var librosArray: [Libro] {
        let coleccion = libros as? Set<Libro> ?? []
        
        return coleccion.sorted { (libroA: Libro, libroB: Libro) in
            (libroA.nombre ?? "") < (libroB.nombre ?? "")
        }
    }
}
