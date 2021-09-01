//
//  ContentView.swift
//  zoom
//
//  Created by Niwarthana De Alwis on 2021-08-30.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isZoomed = false
    
    var body: some View {
        Image(systemName: "square.and.pencil")
            .resizable()
            .aspectRatio(contentMode: isZoomed ? .fill : .fit).ignoresSafeArea(.all)
            .onTapGesture {
                withAnimation{
                    isZoomed.toggle()
                }
                
                
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
