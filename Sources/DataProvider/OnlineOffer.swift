//
// OnlineOffer.swift
//
//

import Foundation

public struct OnlineOffer: Codable, Identifiable {
    public let id: String
    let title: String
    let url: String
    let _description: String
    let category: String
    let image: String
    let imageAdditional: String
    let minOrderQuantity: String
    let energie: String
    let energieskala: String
    let preis: String
    let streichpreis: String
    let uvp: String
    let grundpreis: String

//    public init(sku: String?, title: String?, url: String?, _description: String?, category: String?, image: String?, imageAdditional: String?, minOrderQuantity: String?, energie: String?, energieskala: String?, preis: String?, streichpreis: String?, uvp: String?, grundpreis: String?) {
//        self.sku = sku
//        self.title = title
//        self.url = url
//        self._description = _description
//        self.category = category
//        self.image = image
//        self.imageAdditional = imageAdditional
//        self.minOrderQuantity = minOrderQuantity
//        self.energie = energie
//        self.energieskala = energieskala
//        self.preis = preis
//        self.streichpreis = streichpreis
//        self.uvp = uvp
//        self.grundpreis = grundpreis
//    }

    enum CodingKeys: String, CodingKey { 
        case id = "sku"
        case title
        case url
        case _description = "description"
        case category
        case image
        case imageAdditional = "image_additional"
        case minOrderQuantity = "min_order_quantity"
        case energie
        case energieskala
        case preis
        case streichpreis
        case uvp
        case grundpreis
    }
}

/*
 {
     "sku": "1299496002",
     "title": "Home Deluxe RedSun XL Infrarotkabine",
     "url": "https://www.netto-online.de/home-deluxe-redsun-xl-infrarotkabine/p-1299496002?RefID=I_app_1299496002&utm_source=hz&utm_medium=app&utm_campaign=1299496002",
     "description": "Die  Home Deluxe Redsun Infrarotkabine  ist optisch, sowie auch funktioniell die perfekte Lösung für Ihre Wellnessoase.   Verwöhnen Sie Ihren Körper nach einer anstrengenden Arbeitswoche mit ein paar gemütlichen Saunagängen und tun Sie gleichzeitig etwas f",
     "category": "Gesundheit &...",
     "image": "https://tnm.scene7.com/is/image/TNM/uniTemp_Netto?$image=is{TNM/1299496002_prod_001}&wid=310&hei=310&resmode=sharp2&defaultImage=TNM/fallback_NettoDE",
     "image_additional": "https://tnm.scene7.com/is/image/TNM/uniTemp_Netto?$image=is{TNM/1299496002_prod_001}&wid=105&hei=105&resmode=sharp2&defaultImage=TNM/fallback_NettoDE",
     "min_order_quantity": "1",
     "energie": "",
     "energieskala": "",
     "preis": "1072.17",
     "streichpreis": "",
     "uvp": "1749.90",
     "grundpreis": ""
 }
 */
