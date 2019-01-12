//
//  player.swift
//  ThunderUp
//
//  Created by User01 on 2019/1/12.
//  Copyright © 2019 chen. All rights reserved.
//

import Foundation
struct player: Codable {
    var pic: String
    var name: String
    var number: String
    var position: String
    var pts: String
    var fgp: String
    var tpp: String
    var ftp: String
    var reb: String
    var ast: String
    var stl: String
    var to: String
}

struct playerResults: Codable {
    var resultCount: Int
    var results: [player]
}
