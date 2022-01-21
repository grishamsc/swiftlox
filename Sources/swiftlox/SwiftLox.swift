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
        switch args.count {
        case 1:
            Repl().run()
            return .ok
        case 2:
            let filePath = args[1]
            FileRunner().run(filePath: filePath)
            return .ok
        default:
            print("Usage: swiftlox [source path]")
            return .error
        }
    }
}

enum ExitCode: Int32 {
    case ok = 0
    case error = 90
}
