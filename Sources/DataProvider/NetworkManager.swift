//
//  File.swift
//  
//
//  Created by Christopher Alford on 10.11.20.
//

import Foundation
import Combine

public class NetworkManager: ObservableObject {

    //public var didChange = PassthroughSubject<NetworkManager, Never>()

    @Published public var results = [OnlineOffer]() //{
//        didSet {
//            didChange.send(self)
//        }
//    }

    public init?() {
        guard let url = URL(string: "https://marine.digital//INTERSHOP/static/WFS/Plus-NettoDE-Site/-/Plus-NettoDE/de_DE/Feed/os-angebote.json") else { return }

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            do {
                let offerResponse = try JSONDecoder().decode(OnlineOfferResponse.self, from: data)
                self.results = offerResponse.offers // If in an app should be on main thread!
            } catch {
                return
            }
        }.resume()
    }

}
