//
//  ContentView.swift
//  SSLPinning
//
//  Created by Akshay Kumar on 21/06/22.
//

import SwiftUI

struct ContentView: View {
    let networkManager = NetworkManager()
    
    // Added the constructer dependency injection in BikeView Model
    @ObservedObject private var bikeViewModel = BikeStationViewModel(networkManager: NetworkManager())
    
    var body: some View {
        List(bikeViewModel.features) {features in
            Text(features.id ?? "default")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
