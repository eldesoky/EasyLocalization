//
//  IBDesignable+Ext.swift
//  EasyLocalization
//
//  Created by abdelrahman on 2/9/18.
//

import Foundation

// MARK:- local extention for language
public extension String{
    var locale: String {
        get {
            // get value from dictionary
            for (key,value) in langs{
                if value[self] != nil  , (language == key) {
                    return value[self]!
                }
            }
            // return final value from dictionary
            return "lang.\(self)"
        }
        
    }
}

// MARK:- UILabel localize Key extention for language in story board

@IBDesignable public extension UILabel {
    @IBInspectable public var localizeKey: String? {
        set {
            // set new value from dictionary
            DispatchQueue.main.async{
                self.text = newValue?.locale
            }
        }
        get {
            return self.text
        }
    }
}

// MARK:- UIButton localize Key extention for language in story board

@IBDesignable public extension UIButton {
    
    @IBInspectable public var localizeKey: String? {
        set {
            // set new value from dictionary
            DispatchQueue.main.async{
                self.setTitle(newValue?.locale, for: .normal)
            }
        }
        get {
            return self.titleLabel?.text
        }
    }
}

// MARK:- UITextView localize Key extention for language in story board

@IBDesignable public extension UITextView {
    
    @IBInspectable public var localizeKey: String? {
        set {
            // set new value from dictionary
            DispatchQueue.main.async{
                self.text = newValue?.locale
            }
        }
        get {
            return self.text
        }
    }
}

// MARK:- UITextField localize Key extention for language in story board

@IBDesignable public extension UITextField {
    @IBInspectable public var localizeKey: String? {
        set {
            // set new value from dictionary
            DispatchQueue.main.async{
                self.placeholder = newValue?.locale
            }
        }
        get {
            return self.placeholder
        }
    }
}

// MARK:- UINavigationItem localize Key extention for language in story board

@IBDesignable public extension UINavigationItem {
    
    @IBInspectable public var localizeKey: String? {
        set {
            // set new value from dictionary
            DispatchQueue.main.async{
                self.title = newValue?.locale
            }
        }
        get {
            return self.title
        }
    }
}

