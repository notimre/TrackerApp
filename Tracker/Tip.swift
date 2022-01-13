//
//  Tip.swift
//  Tracker
//
//  Created by Imre Draskovits on 13/01/2022.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
