//
//  Info.swift
//  navegationTabs
//
//  Created by MacBook 26 on 01/08/23.
//

import SwiftUI

struct MyView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.accentColor, .white]), startPoint: .bottom, endPoint: .top)
            VStack{
                Button(action: {
                    isPresented = false
                }){
                    Text("Cerrar")
                        .font(.title)
                }
                .foregroundColor(.accentColor)
                
                VStack{
                    Text("Hola mi nombre es David :D").font(.title)
                }
                
            }
        }
        .ignoresSafeArea()
    }
}

