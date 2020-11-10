//
// OnlineOfferResponse.swift
//
//

import Foundation

public struct OnlineOfferResponse: Codable {

    let result: String
    let returnCode: String
    let offers: [OnlineOffer]

    enum CodingKeys: String, CodingKey {
        case result
        case returnCode
        case offers = "data"
    }
}

/*
 https://netto-online.de

 {
     "result": "success",
     "returnCode": "1",
     "data": [
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
         },...
    ]
 }
 */
