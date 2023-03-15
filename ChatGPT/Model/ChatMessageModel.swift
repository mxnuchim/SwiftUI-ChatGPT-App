//
//  ChatMessageModel.swift
//  ChatGPT
//
//  Created by Manuchim Oliver on 15/03/2023.
//

import Foundation

struct ChatMessage {
    let id: String
    let content: String
    let createdAt: Date
    let sender: MessageSender
}

enum MessageSender {
    case me
    case chatGPT
}



extension ChatMessage {
    static let sampleMessages = [
        ChatMessage(id: UUID().uuidString, content: "Sample message from me", createdAt: Date(), sender: .me),
        ChatMessage(id: UUID().uuidString, content: "Sample message from chatGPT", createdAt: Date(), sender: .chatGPT),
        ChatMessage(id: UUID().uuidString, content: "Sample message from me", createdAt: Date(), sender: .me),
        ChatMessage(id: UUID().uuidString, content: "Sample message from chatGPT", createdAt: Date(), sender: .chatGPT),
        ChatMessage(id: UUID().uuidString, content: "Sample message from me", createdAt: Date(), sender: .me),
        ChatMessage(id: UUID().uuidString, content: "Sample message from chatGPT", createdAt: Date(), sender: .chatGPT),
    ]
}
