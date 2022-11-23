import SwiftImage
import Foundation

extension IteratorProtocol {
	public mutating func skip() -> Self {
		let _ = self.next()
		return self
	}
}

extension Image
	where Pixel == RGBA<UInt8>
{
	/// Add an image to this image at the specified position with the specified dimension
	public mutating func add(image other: Self, pos: (Int, Int), dim: (Int, Int)) {
		// let w = other.width;
		// let h = other.height;
		let w = dim.0
		let h = dim.1
		
		for x in 0..<w {
			for y in 0..<h {
				guard let pixel = other.pixelAt(x: x, y: y) else {
					print("Out of bounds \(x), \(y)")
					return
				}
				
				self[x + pos.0, y + pos.1] = pixel
			}
		}
	}
	
	/// Add an image to this image at the specified position
	public mutating func add(image other: Self, pos: (Int, Int)) {
		self.add(image: other, pos: pos, dim: (other.width, other.height))
	}
	
	public mutating func drawRect(color: RGBA<UInt8>, pos: (Int, Int), size: (Int, Int)) {
		for x in 0..<size.0 {
			for y in 0..<size.1 {
				self[pos.0 + x, pos.1 + y] = color
			}
		}
	}
}

///////////////////////////////////////////////////////////////////////////////

struct ImageCompositor<L: Layout, P: PostProcessor> {
	// var finalImage: Image<RGBA<UInt8>>
	var layout: L
	var postProcessor: P
}

extension ImageCompositor {
	func construct(images: [Image<RGBA<UInt8>>], finalImage: inout Image<RGBA<UInt8>>) {
		print(self.layout, self.postProcessor)
		for (i, image) in images.enumerated() {
			print("Processing \(i)...")
			self.layout.pasteImage(
				image: self.layout.resizeImage(image: image, destW: finalImage.width, i), 
				on: &finalImage,
				i
			)
		}
		print("Post processing")
		self.postProcessor.process(image: &finalImage)
	}
}

protocol Layout {
	func pasteImage(image: Image<RGBA<UInt8>>, on destination: inout Image<RGBA<UInt8>>, _ n: Int)
	func resizeImage(image: Image<RGBA<UInt8>>, destW destinationWidth: Int, _ n: Int) -> Image<RGBA<UInt8>>
}

/// [  ]
/// [][] 
struct ThreeLayout: Layout {
	func resizeImage(image: Image<RGBA<UInt8>>, destW destinationWidth: Int, _ n: Int) -> Image<RGBA<UInt8>> {
		let w: Int
		switch n {
			case 0:
				w = destinationWidth
			case 1:
				fallthrough
			case 2:
				w = destinationWidth / 2
			default:
				exit(1)
		}
		
		let ratio = image.width / w
		return image.resizedTo(
			width: w, 
			height: image.height / ratio
		)
	}
	
	func pasteImage(image: Image<RGBA<UInt8>>, on destination: inout Image<RGBA<UInt8>>, _ n: Int) {
		switch n {
			case 0:
				destination.add(image: image, pos: (0, 0), dim: (destination.width, destination.height / 2))
			case 1:
				destination.add(image: image, pos: (0, destination.height / 2), dim: (destination.width / 2, destination.height / 2))
			case 2:
				destination.add(image: image, pos: (destination.width / 2, destination.height / 2), dim: (destination.width / 2, destination.height / 2))
			default:
				exit(1)
		}
	}
}

protocol PostProcessor {
	func process(image: inout Image<RGBA<UInt8>>)
}

struct LightBluePostProcessor: PostProcessor {
	func process(image: inout Image<RGBA<UInt8>>) {
		let rectW = 10
		let rectC: RGBA<UInt8> = RGBA(red: 36, green: 41, blue: 67)
		image.drawRect(color: rectC, pos: (0, image.height / 2 - rectW / 2), size: (image.width, rectW))
		image.drawRect(color: rectC, pos: (image.width / 2 - rectW / 2, image.height / 2), size: (rectW, image.height / 2))
	}
}

///////////////////////////////////////////////////////////////////////////////

enum ArgumentType {
	case Output
}

// struct Argument {
// 	let type: ArgumentType
// 	let val: String
// }

let IMG_SIZE = (877, 798)

var images: [Image<RGBA<UInt8>>] = []
var args: [ArgumentType: String] = [:]

// Collect command line arguments
var iter = CommandLine.arguments.makeIterator()
iter.skip().forEach { image in
	if image.starts(with: "-o") {
		args[.Output] = image.replacingOccurrences(of: "-o", with: "")
	} else {
		images.append(Image<RGBA<UInt8>>(contentsOfFile: image)!)
	}
}

print(args)

var finalImage = Image<RGBA<UInt8>>(width: IMG_SIZE.0, height: IMG_SIZE.1, pixel: .black)

let compositor = ImageCompositor(layout: ThreeLayout(), postProcessor: LightBluePostProcessor())
compositor.construct(images: images, finalImage: &finalImage)

print("Writing image")

try finalImage.write(to: URL(fileURLWithPath: args[.Output] ?? "img.jpg"), atomically: true, format: .jpeg(compressionQuality: 80))

// var image = Image<RGBA<UInt8>>(contentsOfFile: )
