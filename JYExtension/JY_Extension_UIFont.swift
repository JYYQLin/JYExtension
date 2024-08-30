//
//  JY_Extension_UIFont.swift
//  JYExtension
//
//  Created by JYYQLin on 2024/8/9.
//

import UIKit

extension UIFont {
    public static func yq_medium_font(_ fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "PingFangSC-Medium", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
    }
    
    public static func yq_semibold_font(_ fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "PingFangSC-Semibold", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
    }
}

extension UIFont {
    public static func yq_din_font(_ fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "DIN Alternate", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
    }
}

extension UIFont {
    public static func yq_xi_mai_ti_font(_ fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "ZiZhiQuXiMaiTi", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
    }
}

extension UIFont {
    public static func yq_gotham_font(_ fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "Gotham", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
    }
}

extension UIFont {
    public static func yq_zi_hun_xing_shi_ti_font(_ fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "zihunxingshiti", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
    }
}

extension UIFont {
    static func yq_harmonyOS_Sans_SC_font(_ fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "HarmonyOS Sans SC", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
    }
}

extension UIFont {
    public static func yq_arial_rounded_MT_bold_font(_ fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "Arial Rounded MT Bold", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
    }
}

extension UIFont {
    public static func yq_xian_er_ti_font(_ fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "XianErTi", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
    }
}

extension UIFont {
    public static func yq_chillax_bold_font(_ fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "Chillax-Bold", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
    }
}

extension UIFont {
    public static func yq_chillax_medium_font(_ fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "Chillax-Medium", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
    }
}

extension UIFont {
    public static func yq_chillax_Semibold_font(_ fontSize: CGFloat) -> UIFont {
        return UIFont.init(name: "Chillax-Semibold", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
    }
}
