//
//  File.swift
//  
//
//  Created by Grigory on 20.01.2022.
//

import Foundation

final class Repl {
    func run() {
        while(true) {
            print(">")
            guard let line = readLine() else {
                break
            }
            print(line)
        }
    }
}
