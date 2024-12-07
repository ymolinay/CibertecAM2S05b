//
//  LibrosView.swift
//  Session05b
//
//  Created by DAMII on 3/12/24.
//

import SwiftUI

struct LibrosView : View {
    @Environment(\.managedObjectContext) private var viewContext
    @ObservedObject var escritor: Escritor
    
    @State private var contador: Int = 0
    
    var body: some View {
        VStack{
            if (escritor.librosArray.isEmpty) {
                Text("No hay libros")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding()
            } else {
                List {
                    ForEach(escritor.librosArray, id: \.self) { item in
                        Text(item.nombre ?? "Sin nombre")
                    }
                }
            }
            Button("Agregar libro") {
                agregarLibro()
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .navigationTitle(escritor.nombre ?? "Escritor")
    }
    
    private func agregarLibro() {
        let nuevoLibro = Libro(context: viewContext)
        nuevoLibro.id = UUID()
        nuevoLibro.nombre = "Libro \(contador)"
        nuevoLibro.escritor = escritor
        contador += 1
        try? viewContext.save()
    }
}
