//
//  ContentView.swift
//  Get Groovy
//
//  Created by Tyler  Kamholz on 9/3/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        HStack {
            Spacer()
            VStack {
                Spacer()
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Home View")
            }
            .padding()
            
        }.background(Color(red: 255/255, green: 219/255, blue: 187/255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
