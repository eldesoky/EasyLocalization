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
    
    static var rtlLang:[locale] = [.ar,.hi,.tr]

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
        if rtlLang.contains(language ?? .en){
            // all views direction right to left
            UIView.appearance().semanticContentAttribute = .forceRightToLeft
        }else{
            // all views direction left to right
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }
//        syncLang()
    }
    
    //MARK:- set new language dictionary
    public class func setLanguageDictionary(_ locale:locale ,_ dictionary:[String:String]) {
        langs[locale] = dictionary
    }
    
    //MARK:- set new language
    public class func setLanguage(_ locale:locale) {
        language = locale
        UserDefaults.standard.set(localeArr.index(where: {$0 == language}), forKey: "EasyLocalizationlanguage")
        if rtlLang.contains(language ?? .en){
            // all views direction right to left
            UIView.appearance().semanticContentAttribute = .forceRightToLeft
        }else{
            // all views direction left to right
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }
//        syncLang()
    }
    
    //MARK:- get last updated language
    public class func getLanguage() -> locale {
        let index =  UserDefaults.standard.integer(forKey: "EasyLocalizationlanguage")
        return localeArr[index]
    }
    
    //MARK:- sync apple Languages
//    public class func syncLang() {
//        let index =  UserDefaults.standard.integer(forKey: "EasyLocalizationlanguage")
//        UserDefaults.standard.set([localeArrStrings[index]], forKey: "AppleLanguages")
//        UserDefaults.standard.synchronize()
//    }
//
   
}

