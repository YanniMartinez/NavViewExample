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
            LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .bottom, endPoint: .top)
            VStack{
                Button(role: .destructive ,action: {
                    isPresented = false
                }){
                    Text("Cerrar")
                        .font(.title)
                }
                .foregroundColor(.green.opacity(0.75))
                
                VStack{
                    Text("Hola mi nombre es David :D").font(.title).foregroundColor(.cyan)
                }
                
                VStack{
                    Image("Dafget")
                        .resizable()
                        .frame(width: 100,height: 100)
                }
                
            }
        }
        .ignoresSafeArea()
    }
}

