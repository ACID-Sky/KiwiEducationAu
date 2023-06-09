//
//  Array+only.swift
//  Memorize
//
//  Created by Лёха Небесный on 07.06.2023.
//

import Foundation


extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
