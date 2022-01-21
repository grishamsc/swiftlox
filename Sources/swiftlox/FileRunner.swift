//
//  FileRunner.swift
//  
//
//  Created by Grigory on 20.01.2022.
//

import Foundation

final class FileRunner {
    func run(filePath: String) -> ExitCode {
        do {
            let expandedFilePath = NSString(string: filePath).expandingTildeInPath
            let source = try String(contentsOfFile: expandedFilePath, encoding: .utf8)
            print(source)
            return .ok
        } catch {
            return .error
        }
    }
}

private extension FileRunner {}
