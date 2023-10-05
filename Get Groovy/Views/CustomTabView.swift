//
//  CustomTabView.swift
//  Get Groovy
//
//  Created by Tyler  Kamholz on 10/4/23.
//

import SwiftUI

struct CustomTabView: View {
    
    @Binding var tabSelection: Int
    @Namespace private var animationNamespace
    
    //button icons and titles
    let tabBarItems: [(image: String, title: String)] =
    [
        ("music.note.house", "Home"),
        ("plus.rectangle", "Post"),
        ("person.crop.circle", "Profile")
    ]
    
    var body: some View {
        
        ZStack {
            
            //fiddle with this to look like glass
            Capsule()
                .frame(height: 75)
                .foregroundStyle(Color(UIColor.white))
                .opacity(0.75)
            
            HStack {
                
                //this does it for each button
                ForEach(0..<3) { index in
                    
                    Spacer()
                    
                    Button {
                        tabSelection = index + 1
                    } label: {
                        VStack(spacing: 8) {
                            
                            Spacer()
                            
                            //this is the tab icon
                            Image(systemName: tabBarItems[index].image).imageScale(.large)
                            
                            //this is the text under the icon
                            Text(tabBarItems[index].title)
                                .font(.caption)
                            
                            //this moves the blue thing under the tab
                            if index + 1 == tabSelection {
                                
                                Capsule()
                                    .frame(width: 40, height: 4)
                                    .foregroundStyle(.blue)
                                    .matchedGeometryEffect(id: "tabSelection", in: animationNamespace)
                                    .offset(y: -5)

                                
                            } else {
                                
                                Capsule()
                                    .frame(width: 40, height: 4)
                                    .foregroundStyle(.clear)
                                
                            }
                            
                            
                        }
                        .foregroundStyle(index + 1 == tabSelection ? .blue : .black)
                        
                        
                    }

                    Spacer()
                    
                    
                }
                
                
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            .frame(height: 75)
            .clipShape(Capsule())
            
            
        }.padding(.horizontal)
        
    }
}

#Preview {
    CustomTabView(tabSelection: .constant(1))
}
