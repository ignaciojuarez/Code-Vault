//
//  ChatGPTcode.swift
//  Code Vault
//
//  Created by Ignacio Juarez on 9/12/23.
//

import Foundation
import ChatGPTSwift


let api = ChatGPTAPI(apiKey: "API_KEY")


// what langages / frameworks do you work with? (you can update this information later)
//

public func getFolder() -> String{
    let folder: String = ""
    
    return folder
    
}

public func getTitie() -> String {
    let title: String = ""
    
    return title
}

private func sendMessage(){
    Task {
        do {
            let response = try await api.sendMessage(text: "What is ChatGPT?")
            print(response)
        } catch {
            print(error.localizedDescription)
        }
    }
}


