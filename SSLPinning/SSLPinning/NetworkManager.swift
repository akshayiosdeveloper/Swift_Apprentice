//
//  NetworkManager.swift
//  BikeStation
//
//  Created by Akshay Kumar on 31/05/22.
//

import Foundation
import Combine

protocol NetworkManagerProtocol: class {
    func getData<T>(type: T.Type,url: URL) -> AnyPublisher<T,Error> where T: Decodable
}

final class NetworkManager: NetworkManagerProtocol {
    func getData<T>(type: T.Type, url: URL) -> AnyPublisher<T, Error> where T : Decodable {
        let urlRequest = URLRequest(url: url)
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .receive(on: RunLoop.main)
            .map { server in
                return server.data
            }
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
