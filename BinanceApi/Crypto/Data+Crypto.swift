import Foundation
import CommonCrypto

extension Data {

	// MARK: - Digest

	public var md2: Data {
		return digest(Digest.md2)
	}

	public var md4: Data {
		return digest(Digest.md4)
	}

	public var md5: Data {
		return digest(Digest.md5)
	}

	public var sha1: Data {
		return digest(Digest.sha1)
	}

	public var sha224: Data {
		return digest(Digest.sha224)
	}

	public var sha256: Data {
		return digest(Digest.sha256)
	}

	public var sha384: Data {
		return digest(Digest.sha384)
	}

	public var sha512: Data {
		return digest(Digest.sha512)
	}

	private func digest(_ function: ((UnsafeRawBufferPointer, UInt32) -> [UInt8])) -> Data {
		var hash: [UInt8] = []
		withUnsafeBytes { hash = function($0, UInt32(count)) }
		return Data(bytes: hash, count: hash.count)
	}

	// MARK: - HMAC

	public func hmac(key: Data, algorithm: HMAC.Algorithm) -> Data {
		return HMAC.sign(data: self, algorithm: algorithm, key: key)
	}

	// MARK: - Internal

	var hex: String {
		return map { String(format: "%02x", $0) }.reduce("", +)
	}
}
