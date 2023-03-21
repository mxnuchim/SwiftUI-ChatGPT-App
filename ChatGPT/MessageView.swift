//
//  MessageView.swift
//  ChatGPT
//
//  Created by Manuchim Oliver on 15/03/2023.
//

import SwiftUI

struct MessageView: View {
    var message: ChatMessage
    var body: some View {
            HStack{
                    if message.sender == .me{Spacer()}
                    Text(message.content)
                        .foregroundColor(message.sender == .me ? .white : nil)
                        .padding()
                        .background(message.sender == .me ? .blue : .gray.opacity(0.4))
                        .cornerRadius(24)
                    if message.sender == .chatGPT{Spacer()}
            }
        }
           
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
