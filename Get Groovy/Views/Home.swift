//
//  ContentView.swift
//  Get Groovy
//
//  Created by Tyler  Kamholz on 9/3/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Home View")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
