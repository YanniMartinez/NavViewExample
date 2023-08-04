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
    var body: some View {
        VStack {
            NavigationView {
                VStack{
                    Text("Hello").font(.title)
                    
                    Button(action: {
                        isShowingFirstView = true
                    }){
                        Text("Click here🚀").font(.title)
                        
                    }
                    //Pruebas de que funciona
                    //Todo en orden
                    .sheet(isPresented: $isShowingFirstView) {
                        Info(isPresented: $isShowingFirstView)
                    }
                    Button(action: {
                        isShowingSecondView = true
                    }){
                        Text("segundo botòn").font(.title)
                        
                    }
                    .sheet(isPresented: $isShowingSecondView) {
                        infodos(isPresente: $isShowingSecondView)
                    }
                
                
                }
            }
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


