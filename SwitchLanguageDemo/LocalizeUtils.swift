//
//  LocalizeUtils.swift
//  SwitchLanguageDemo
//
//  Created by Frank.Chen on 2018/4/5.
//  Copyright © 2018年 frank.chen. All rights reserved.
//

import UIKit

class LocalizeUtils: NSObject {
    
    static let shared = LocalizeUtils()
    
    /// 依語系檔裡的 key 取得 value 值
    ///
    /// - Parameters:
    ///   - key: 多國語系檔的 key 值
    ///   - localizationFileNmae: 多國語系檔的檔名
    /// - Returns: String
    func localized(withKey key: String, withLocalizationFileNmae localizationFileNmae: String) -> String {
        // 取得 Bundle 下的的多國語系檔
        let path = Bundle.main.path(forResource: localizationFileNmae, ofType: "lproj")
        let bundle = Bundle(path: path!)
        
        return NSLocalizedString(key, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
    
    /// 第一次登入要設定使用者要使用何種語系
    func settingUserLanguageCode() {
        // 取得使用者 iOS 設定的語系
        let preferredLanguages: String = Locale.preferredLanguages.first! // 繁體=zh-Hant-TW、簡體=zh-Hans-TW
        let currentLanguageCode = preferredLanguages.split(separator: "-")[1] // Hant、Hans
        //        print("\(languageCode)")
        
        // 設定要取得的 Bundle 的多國語系檔名
        var bundleLocalizeFileName: String!
        if currentLanguageCode == "Hant" {
            // 繁體
            bundleLocalizeFileName = "zh-Hant"
        } else if currentLanguageCode == "Hans" {
            // 簡體
            bundleLocalizeFileName = "zh-Hans"
        } else {
            // 不是中文就直接使用英文語系
            bundleLocalizeFileName = "en"
        }
        
        // 設定多國語系檔的檔名
        UserDefaults.standard.set(bundleLocalizeFileName, forKey: "UserLanguage")
    }
    
}
