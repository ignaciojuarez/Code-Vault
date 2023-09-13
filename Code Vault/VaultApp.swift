//
//  Code_VaultApp.swift
//  Code Vault
//
//  Created by Ignacio Juarez on 9/12/23.
//

import SwiftUI

@main
struct VaultApp: App {
    var body: some Scene {
        WindowGroup {
            #if os(macOS)
            MacOSView()
            #endif
            
            #if os(iOS)
            iOSView()
            #endif
        }
    }
}
