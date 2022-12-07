import SwiftImage
import Foundation

try Image<RGBA<UInt8>>(
	contentsOfFile: CommandLine.arguments[1])!
		.write(
			to: URL(fileURLWithPath: CommandLine.arguments[2]), 
			atomically: true,
			format: .jpeg(compressionQuality: 80)
		)
