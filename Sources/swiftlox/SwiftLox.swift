//
//  SwiftLox.swift
//  
//
//  Created by Grigory on 20.01.2022.
//

import Foundation

enum SwiftLox {}

extension SwiftLox {
    static func run(args: [String]) -> ExitCode {
        return .ok
    }
}

enum ExitCode: Int32 {
    case ok = 0
    case error = 90
}
