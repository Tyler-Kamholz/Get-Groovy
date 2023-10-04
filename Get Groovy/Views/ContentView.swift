//
//  ContentView.swift
//  Get Groovy
//
//  Created by Tyler  Kamholz on 10/3/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabSelection = 1
    
    
    var body: some View {
        TabView(selection: $tabSelection) {
            Home().tag(1)
            Post().tag(2)
            Account().tag(3)
            
        }.overlay(alignment: .bottom) {
            CustomTabView(tabSelection: $tabSelection)
        }
    }
}

#Preview {
    ContentView()
}
