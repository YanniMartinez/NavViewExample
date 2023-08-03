//
//  ContentView.swift
//  navegationTabs
//
//  Created by MacBook 26 on 01/08/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingFirstView = false
    @State private var isShowingSecondView = false
    @State private var isShowingMyView = false
    var body: some View {
        
        VStack {
            NavigationView {
                VStack(spacing: 30){
                    Button(action: {
                        isShowingFirstView = true
                    }){
                        Text("Click here🚀").font(.title)
                        
                    }
                    .sheet(isPresented: $isShowingFirstView) {
                        Info(isPresented: $isShowingFirstView)
                    }
                     
                     Button(action: {
                         isShowingFirstView = true
                     }){
                         Text("Nuevo botón ").font(.title)
                         
                     }
                     .sheet(isPresented: $isShowingFirstView) {
                         Nuevo(isPresented: $isShowingFirstView)
                     }
                    
                    Button(action: {
                        isShowingSecondView = true
                    }){
                        Text("segundo botòn").font(.title)
                        
                    }
                    .sheet(isPresented: $isShowingSecondView) {
                        Info(isPresented: $isShowingSecondView)
                    }
                    Button(action: {
                        isShowingMyView = true
                    }){
                        Text("Clikeale Aqui😁").font(.title).foregroundColor(.green.opacity(1))
                        
                    }
                    .sheet(isPresented: $isShowingMyView) {
                        MyView(isPresented: $isShowingMyView)
                    }
                
                
                }
                
                
                
            }
        }.padding()
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


