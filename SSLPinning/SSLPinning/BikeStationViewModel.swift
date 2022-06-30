//
//  BikeStationViewModel.swift
//  BikeStation
//
//  Created by Akshay Kumar on 31/05/22.
//

import Foundation
import Combine
import MapKit

protocol BikeStationViewModelProtocol: class {
    var networkManager: NetworkManagerProtocol { get }
    func getBikeStationData() -> AnyPublisher<BikeStation, Error>
}
class BikeStationViewModel: ObservableObject, BikeStationViewModelProtocol {
    
    var networkManager: NetworkManagerProtocol
    private var cancellable: AnyCancellable?
    
    @Published var features = [Feature]()
    
    
    init(networkManager: NetworkManagerProtocol) {
        self.networkManager = networkManager
    }
    
    func getBikeStationData() -> AnyPublisher<BikeStation, Error> {
        return networkManager.getData(type: BikeStation.self, url: URL(string:"https://www.poznan.pl/mim/plan/map_service.html?mtype=pub_transport&co=stacje_rowerowe")!)
    }
    
    func fetchBikeStationData() {
        cancellable = self.getBikeStationData()
            .sink { (completion) in
                
                switch completion {
                case  let .failure(error):
                    print("unalbe to user\(error.localizedDescription)")
                case .finished:
                    break
                }
            } receiveValue: { (bikeSation) in
                
                self.features = bikeSation.features
                
            }
    }
    
}
