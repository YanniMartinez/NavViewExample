//
//  Info.swift
//  navegationTabs
//
//  Created by MacBook 26 on 01/08/23.
//

import SwiftUI

struct infodos: View {
    
    @Binding var isPresente: Bool
    
    var body: some View {
        VStack{
            Button(action: {
                isPresente = false
            }){
                Image("cruz")
                    .resizable()
                    .frame(width: 30,height: 30)
                    .position(x:300, y:30)
            }
            .foregroundColor(.white)
            .cornerRadius(10)
            
            VStack{
                Text("Jonathan").font(.title)
                Spacer()
            }
            
        }
    }
}


