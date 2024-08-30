//
//  JY_Extension_UIWindow.swift
//  JYExtension
//
//  Created by JYYQLin on 2024/8/9.
//

import UIKit

extension UIWindow {
    public static func yq_first_window() -> UIWindow? {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        return window
    }
}
