//
//  OpenAIService.swift
//  ChatGPT
//
//  Created by Manuchim Oliver on 15/03/2023.
//

import Foundation
import Alamofire
import Combine

class OpenAIService {
    let baseUrl = "https://api.openai.com/v1/"
    
    func sendMessage(message: String) -> AnyPublisher<OpenAIResponse, Error> {
        let body = OpenAICompletionsBody(model: "text-davinci-003", prompt: message, temperature: 0.7, max_tokens: 256)
        
        let headers: HTTPHeaders = [
            "Authorization" : "Bearer \(Constants.OpenAIAPIKey)"
        ]
        
        return Future { [weak self] promise in
            guard let self = self else {return}
            
            AF.request(self.baseUrl + "completions", method: .post, parameters: body, encoder: .json, headers: headers).responseDecodable(of: OpenAIResponse.self) { response in
                switch response.result {
                    case .success(let result): promise(.success(result))
                        
                    case.failure(let error): promise(.failure(error))
                }
            }
        }
        .eraseToAnyPublisher()
    }
}
