//
//  JY_Extension_UIApplication.swift
//  JYExtension
//
//  Created by Jing on 2024/8/9.
//

import UIKit

extension UIApplication {
    /// 获取当前BundleID
    public static func yq_bundle_identifier() -> String {
        guard let bundleIdentifier = Bundle.main.infoDictionary!["CFBundleIdentifier"] as? String else {return "命名空间错误"}
        return bundleIdentifier
    }
    
    /// 获取当前版本号
    public static func yq_appVersion() -> String {
        guard let currentVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as? String else{return "版本号错误"}
        return currentVersion
    }
}

extension UIApplication {
    /** 跳转应用设置 */
    public static func yq_push_application_setting(completionHandler: ((Bool) -> Void)? = nil) {
        guard let url = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        
        DispatchQueue.main.async {
            if UIApplication.shared.canOpenURL(url) == true {
                UIApplication.shared.open(url, options: [:], completionHandler: completionHandler)
            }
        }
    }
}
