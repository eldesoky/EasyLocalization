//
//  IBDesignable+Ext.swift
//  EasyLocalization
//
//  Created by abdelrahman on 2/9/18.
//

import Foundation

public extension String{
    var locale: String {
        get {
            
            for (key,value) in langs {
                if(language == key) , value[self] != nil{
                    return value[self]!
                }
            }
            return "lang.\(self)"
        }
        
    }
}


@IBDesignable public extension UILabel {
    
    @IBInspectable public var localizeKey: String? {
        set {
            self.text = newValue?.locale
        }
        get {
            return self.text
        }
    }
}

@IBDesignable public extension UIButton {
    
    @IBInspectable public var localizeKey: String? {
        set {
            self.setTitle(newValue?.locale, for: .normal)
        }
        get {
            return self.titleLabel?.text
        }
    }
}

@IBDesignable public extension UITextView {
    
    @IBInspectable public var localizeKey: String? {
        set {
            self.text = newValue?.locale
        }
        get {
            return self.text
        }
    }
}

@IBDesignable public extension UITextField {
    @IBInspectable public var localizeKey: String? {
        set {
            self.placeholder = newValue?.locale
        }
        get {
            return self.placeholder
        }
    }
}

@IBDesignable public extension UINavigationItem {
    
    @IBInspectable public var localizeKey: String? {
        set {
            self.title = newValue?.locale
        }
        get {
            return self.title
        }
    }
}

