//
//  EasyLocalization.swift
//  EasyLocalization
//
//  Created by abdelrahman on 2/9/18.
//

import Foundation

public var language:locale?
public var langs:[locale:[String:String]] = [:]

public class EasyLocalization {
    
    init() {
        let index =  UserDefaults.standard.integer(forKey: "EasyLocalizationlanguage")
        language = localeArr[index]
    }
    
    public class func config( locale:locale? = nil , languageDictionary:[locale:[String:String]]) {
        let index =  UserDefaults.standard.integer(forKey: "EasyLocalizationlanguage")
        language = localeArr[index]
        language = language == nil ? locale : language
        UserDefaults.standard.set(localeArr.index(where: {$0 == language}), forKey: "EasyLocalizationlanguage")
        langs = languageDictionary
    }
    
    public class func setLanguageDictionary(_ locale:locale ,_ dictionary:[String:String]) {
        langs[locale] = dictionary
    }
    
    public class func setLanguage(_ locale:locale) {
        language = locale
        UserDefaults.standard.set(localeArr.index(where: {$0 == language}), forKey: "EasyLocalizationlanguage")
    }
    
    public class func getLanguage() -> locale {
        let index =  UserDefaults.standard.integer(forKey: "EasyLocalizationlanguage")
        return localeArr[index]
    }
    
}

