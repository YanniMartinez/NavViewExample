//
//  Info.swift
//  navegationTabs
//
//  Created by MacBook 26 on 01/08/23.
//

import SwiftUI

struct Info: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack{
            Button(role: .destructive ,action: {
                isPresented = false
            }){
                Image("close")
                    .resizable()
                    .frame(width: 30,height: 30)
                    .position(x:300, y:30)
            }
            .foregroundColor(.white)
            .cornerRadius(10)
            
            VStack{
                Text("Hola 🐣").font(.title)
                Spacer()
            }
            
        }
    }
}


