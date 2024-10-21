import SwiftImage
import WebP
import Foundation
import ArgumentParser

@main
struct ImageConvert: ParsableCommand {
	@Option(name: .shortAndLong, help: "The type of file to convert to")
	var type: String? = nil

	@Option(name: .shortAndLong, help: "Compression quality for supported types")
	var quality: Int = 65

	@Option(name: .shortAndLong, help: "Set a maximum width to the image, scaling down of the original width is larger")
	var widthMax: Int? = nil

	@Argument(help: "The file to convert")
	var input: String

	@Argument(help: "The output file name")
	var output: String

	mutating func run() throws {
		let filetype: FileType
		switch (self.type) {
			case "jpeg": fallthrough
			case "jpg":
				filetype = .jpeg
			case nil: fallthrough
			case "webp":
				filetype = .webp
			default:
			 fatalError("Invalid type \(self.type)")
		}

		var image = Image<RGBA<UInt8>>(contentsOfFile: self.input)!

		// Downsize image if needed
		let imageWidth = image.width
		let imageHeight = image.height
		let maxWidth: Int
		if self.widthMax == nil {
		  maxWidth = imageWidth
		} else {
		  maxWidth = self.widthMax!
		}
		let scale = (maxWidth / imageWidth)

		if scale < 1 {
		  image = image.resizedTo(width: imageWidth * scale, height: imageHeight * scale)
		}

		// write
		switch (filetype) {
			case .jpeg:
			  try image.write(
					to: URL(fileURLWithPath: self.output),
					atomically: true,
					format: .jpeg(compressionQuality: Double(self.quality))
				)
			case .webp:
			  let encoder = WebPEncoder()
			  let data = try encoder.encode(image.nsImage, config: .preset(.picture, quality: Float(self.quality)))
				try data.write(to: URL(fileURLWithPath: self.output))
		}
	}
}

enum FileType {
		case jpeg
		case webp
}
