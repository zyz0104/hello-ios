//
//  Array+Only.swift
//  HelloWorld
//
//  Created by Eshine on 10/28/20.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
