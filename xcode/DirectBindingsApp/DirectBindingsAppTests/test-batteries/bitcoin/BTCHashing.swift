//
//  BTCHashing.swift
//  DirectBindingsAppTests
//
//  Created by Arik Sosman on 3/29/22.
//

import Foundation
import Crypto

class BTCHashing {

	public static let SHA_ZERO_HASH = [UInt8](repeating: 0, count: 32)
	public static let RIPEMD_ZERO_HASH = [UInt8](repeating: 0, count: 20)

	private static func sha256(_ input: [UInt8]) -> [UInt8] {
		let hash = Crypto.SHA256.hash(data: input)
		let bytes = Array(hash)
		assert(bytes.count == 32)
		return bytes
	}

	static func doubleSha256(_ input: [UInt8]) -> [UInt8] {
		return sha256(sha256(input))
	}

	static func bytesToHexString(bytes: [UInt8]) -> String {
		let format = "%02hhx" // "%02hhX" (uppercase)
		return bytes.map {
			String(format: format, $0)
		}
		.joined()
	}

}
