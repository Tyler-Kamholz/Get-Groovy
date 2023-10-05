//
//  ContentView.swift
//  Get Groovy
//
//  Created by Tyler  Kamholz on 9/3/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        GeometryReader {
            geometry in
            
            HStack (alignment: .center){
                
                ScrollView {
                    VStack {
                        
                        ForEach(1...20, id: \.self) { _ in
                            PostCard()
                        }
                        
                    }
                    .frame(width: geometry.size.width)
                    
                }
                
            }
            .background(Color(red: 255/255, green: 219/255, blue: 187/255))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
