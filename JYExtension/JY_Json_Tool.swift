//
//  JY_Json_Tool.swift
//  KoalaRe
//
//  Created by KoalaRe on 2024/10/9.
//

import UIKit

class JY_Json_Tool {
    
}

//  MARK: 任意类型对象转json字符串
extension JY_Json_Tool {
    /// 任意类型对象转json字符串
    /// - Parameter obj: 任意类型对象
    /// - Returns: json字符串
    static func yq_translation_Objc_to_json(from obj: Any) -> String?{
        if JSONSerialization.isValidJSONObject(obj) == false {
            return nil
        }
        
        do {
            let data = try JSONSerialization.data(withJSONObject: obj, options: JSONSerialization.WritingOptions.init(rawValue: 0))
            let jsonString = String.init(data: data, encoding: .utf8)
            return jsonString
        } catch {
            debugPrint("error: \(error.localizedDescription)")
            return nil
        }
    }
}

extension JY_Json_Tool {
    /// json字符串转字典
    /// - Parameter jsonStirng: json字符串
    /// - Returns: 字典(类型[String : Any])
    static func yq_translation_json_to_dic(from jsonStirng: String) -> [String : Any]? {
        guard let data = yq_translation_json_to_Objc(from: jsonStirng)  else {
            return nil
        }
        return data as? [String : Any]
    }
}

//  MARK: json字符串转对象
extension JY_Json_Tool {
    /// json字符串转对象
    /// - Parameter jsonStirng: json字符串
    /// - Returns: 对象(类型Any)
    static func yq_translation_json_to_Objc(from jsonStirng: String) -> Any? {
        guard let data = jsonStirng.data(using: .utf8) else {
            return nil
        }
        
        let obj = try? JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers)
        
        return obj
    }
}
