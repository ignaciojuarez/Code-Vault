//
//  NavigationBar.swift
//  Nefture
//
//  Created by Ignacio Juarez on 8/5/23.
//

import SwiftUI

struct NavigationBar: View {
    
    var icon: String
    var title: String
    var description: String
    
    var body: some View {
        HStack{
            // Title & Profile icon
            VStack(alignment: .leading){
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                
                Text(description)
                    .font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Image(icon)
                .resizable()
                .scaledToFit()
                .frame(width: 36, height: 36)
                .cornerRadius(100)
        }
        .padding(.bottom)
    }
}

