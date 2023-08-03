//
//  ContentView.swift
//  navegationTabs
//
//  Created by MacBook 26 on 01/08/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingFirstView = false
    var body: some View {
        VStack {
            NavigationView {
                VStack{
                    Button(action: {
                        isShowingFirstView = true
                    }){
                        Text("Click here🚀").font(.title)
                        
                    }
                    .sheet(isPresented: $isShowingFirstView) {
                        Info(isPresented: $isShowingFirstView)
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
