//
//  MyModel.swift
//  SampleApp
//
//  Created by Rajesh Ramachandrakurup on 5/8/20.
//  Copyright © 2020 Rajesh Ramachandrakurup. All rights reserved.
//

import Foundation

struct MyModel {

    func fetchNumber(from text: String) -> String {
        let result = text.components(separatedBy: CharacterSet.decimalDigits.inverted).filter { !$0.isEmpty }
        return result.isEmpty ? "NO RESULT" : result.joined(separator: ",")
    }
}
