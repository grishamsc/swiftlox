import Foundation

let args = CommandLine.arguments
let exitCode = SwiftLox.run(args: args)
exit(exitCode.rawValue)

