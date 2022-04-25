//
//  NextView.swift
//  Start
//
//  Created by cmStudent on 2021/12/04.
//

import SwiftUI

struct NextView: View {
    var body: some View {
        
        // Your Base View....
        NavigationView {
            
        
                
               
                    
                    
                    Text("モジャ！！")
                        .font(.title.bold())
                        .padding()
                
             
          
          
        }
        // Use Overlay since ZStack having issues with animation...
        .overlay(ContentView())
    }
}

struct NextView_Previews: PreviewProvider {
    static var previews: some View {
        NextView()
    }
}
