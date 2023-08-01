//
//  ContentView.swift
//  lab3week2
//
//  Created by Ghada Al on 14/01/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var isToggled = false
    var body: some View {
        NavigationView {
            
              
              VStack {
                  
                  VStack {
                      Text("Hello, world!")
                          .font(.largeTitle)
                          .padding()
                      if isToggled {
        
                          Text("the button is toggled")
                      } else {
                          Text("the button is not toggled")
                              .foregroundColor(.blue)
                              .frame(width: 200, height: 100)
                      }
                      Button(action: {
                          self.isToggled.toggle()
                      }) {
                          Text("Toggle")
                              .padding()
                              .background(Color.green)
                              .foregroundColor(.white)
                              .cornerRadius(10)
                      }
                  }
                  Spacer()
                  VStack{
                  Text("Welcome to the SwiftUi Platform")
                  Spacer()
                  NavigationLink(destination: Myview()) {
                      Text("More about Swift").padding().background(Color.gray)
                          .foregroundColor(.black)
                          .frame(width: 300, height: 600, alignment: .top)
                          .padding()
                          
                  }
                      Spacer()
                  }
              
          
                  
                  
                  
              }
            
            
          
            
            
              
              }
        
    }
}


struct CustomView: View {
    @Binding var text: String
    var body: some View {
            VStack {
                TextField("Enter some text", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button(action: {
                                // Perform some action when the button is tapped
                            }) {
                                Text("Save")
                                    .padding()
                                    .foregroundColor(.white)
                                 
                            }
                        }
                    }
                }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
