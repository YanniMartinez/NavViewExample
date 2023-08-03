//
//  MoreInfo.swift
//  NavViews
//
//  Created by Wendy on 03/08/23.
//
import SwiftUI

struct MoreInfo: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack{
            Button(action: {
                isPresented = false
            }){
                Image("cruz")
                    .resizable()
                    .frame(width: 30,height: 30)
                    .position(x:300, y:30)
            }
            .foregroundColor(.white)
            .cornerRadius(10)
            
            VStack{
                Text("Wendy Sánchez Cortés 🦋").font(.title)
                Spacer()
            }
            
        }
    }
}
