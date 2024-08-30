//
//  JY_Extension_String.swift
//  JYExtension
//
//  Created by JYYQLin on 2024/8/9.
//

import CommonCrypto
import Foundation

extension String {
    /** md5加密 */
    public var yq_md5: String {
        let str = cString(using: String.Encoding.utf8)
        let strLen = CUnsignedInt(lengthOfBytes(using: String.Encoding.utf8))
        let digestLen = Int(CC_MD5_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)
        CC_MD5(str!, strLen, result)
        
        let hash = NSMutableString()
        
        for i in 0..<digestLen {
            hash.appendFormat("%02x", result[i])
        }
        
        result.deallocate()
        return hash as String
    }
    
    public func yq_base64() -> String? {
        guard let data = data(using: .utf8, allowLossyConversion: true) else {
            return nil
        }
        return data.base64EncodedString()
    }
}
