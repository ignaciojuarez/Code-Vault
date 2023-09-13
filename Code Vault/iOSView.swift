//
//  iOSView.swift
//  Code Vault
//
//  Created by Ignacio Juarez on 9/12/23.
//
import SwiftUI

struct iOSView: View {
    
    var body: some View {
            
        ZStack{
            Color.black
                .ignoresSafeArea()
            
            VStack{
                NavigationBar(icon: "holder-icon", title: "Code Vault", description: "organize you code with AI")
                
                Spacer()
            }
            .padding()
        }
    }
}

struct iOSView_Previews: PreviewProvider {
    static var previews: some View {
        iOSView()
    }
}
