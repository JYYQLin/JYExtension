//
//  JY_Extension_Date.swift
//  JYExtension
//
//  Created by JYYQLin on 2024/10/9.
//

import UIKit

class JY_Date_Tool {
    /** 转为（天，时，分，秒）的格式 */
    public static func yq_timeIntervalSinceNow(to futureTimestamp: TimeInterval) -> (days: Int, hours: Int, minutes: Int, seconds: Int) {
        let currentDate = Date()
        let futureDate = Date(timeIntervalSince1970: futureTimestamp)
        
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: futureDate)
        
        guard let days = components.day, let hours = components.hour, let minutes = components.minute, let seconds = components.second else {
            return (0, 0, 0, 0)
        }
        
        return (days, hours, minutes, seconds)
    }
}

extension Int {
    /** 转为（天，时，分，秒）的格式 */
    public func yq_timeIntervalSinceNow() -> (days: Int, hours: Int, minutes: Int, seconds: Int) {
     
        return JY_Date_Tool.yq_timeIntervalSinceNow(to: TimeInterval(self))
    }
}
