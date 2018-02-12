//
//  EasyLocalization.swift
//  EasyLocalization
//
//  Created by abdelrahman on 2/9/18.
//

import Foundation

public var language:locale?
public var langs:[locale:[String:String]] = [:]
public var rtlLang:[locale] = [.ar,.hi,.tr]

public class EasyLocalization {
    
    
    init() {
        let index =  UserDefaults.standard.integer(forKey: "EasyLocalizationlanguage")
        language = localeArr[index]
    }
    
    //MARK:- set language configration
    
    public class func config( locale:locale? = nil , languageDictionary:[locale:[String:String]]) {
        let index =  UserDefaults.standard.integer(forKey: "EasyLocalizationlanguage")
        language = localeArr[index]
        language = language == nil ? locale : language
        UserDefaults.standard.set(localeArr.index(where: {$0 == language}), forKey: "EasyLocalizationlanguage")
        langs = languageDictionary
        syncLang()
    }
    
    //MARK:- set new language dictionary
    public class func setLanguageDictionary(_ locale:locale ,_ dictionary:[String:String]) {
        langs[locale] = dictionary
    }
    
    //MARK:- set new language
    public class func setLanguage(_ locale:locale) {
        language = locale
        UserDefaults.standard.set(localeArr.index(where: {$0 == language}), forKey: "EasyLocalizationlanguage")
        syncLang()
    }
    
    //MARK:- get last updated language
    public class func getLanguage() -> locale {
        let index =  UserDefaults.standard.integer(forKey: "EasyLocalizationlanguage")
        return localeArr[index]
    }
    
    public class func syncLang(){
        if rtlLang.contains(language ?? .en){
            // all views direction right to left
            if #available(iOS 9.0, *) {
                UIView.appearance().semanticContentAttribute = .forceRightToLeft
            }
        }else{
            // all views direction left to right
            if #available(iOS 9.0, *) {
                UIView.appearance().semanticContentAttribute = .forceLeftToRight
            }
        }
    }

    
}

