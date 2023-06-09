//
//  Info.swift
//  KiwiEducationAu
//
//  Created by Лёха Небесный on 31.05.2023.
//

import SwiftUI

struct Info: Identifiable {
    let id: Int
    let title: String
    let subtitle: String
    let description: String
    let image: Image
    let posts: [Info]
}

