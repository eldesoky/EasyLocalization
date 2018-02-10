# EasyLocalization

[![CI Status](http://img.shields.io/travis/a.desoky@intcore.net/EasyLocalization.svg?style=flat)](https://travis-ci.org/a.desoky@intcore.net/EasyLocalization)
[![Version](https://img.shields.io/cocoapods/v/EasyLocalization.svg?style=flat)](http://cocoapods.org/pods/EasyLocalization)
[![License](https://img.shields.io/cocoapods/l/EasyLocalization.svg?style=flat)](http://cocoapods.org/pods/EasyLocalization)
[![Platform](https://img.shields.io/cocoapods/p/EasyLocalization.svg?style=flat)](http://cocoapods.org/pods/EasyLocalization)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

EasyLocalization is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
    pod 'EasyLocalization'
```

## Usage

#Make dictionary for every language with

```
var arabicDic = [
    "test navigation title":"تجربة عنوان",
    "test button":"تجربة زر",
    "test label":"تجربة نص",
    "test textfield":"تجربة حقل نصي",
    "lorem" : "لوريم إيبسوم هو ببساطة نص شكلي بمعنى أن الغاية هي الشكل وليس المحتوى ويُستخدم في صناعات المطابع ودور النشر"
]

var englishDic = [
    "test navigation title":"test navigation title",
    "test button":"test button",
    "test label":"test label",
    "test textfield":"test textfield",
    "lorem" : "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
]
```
#In AppDelegate.swift, just import EasyLocalization framework and make configration.

```

EasyLocalization.config(
                        locale: .en,
                        languageDictionary: [
                            .ar : /* set your arbic dictionary for example "arabicDic" */,
                            .en : /* set your english dictionary for example "englishDic" */,
                        ]
                    )
                    
    // if you need to change all views direction you can use this
    
    if EasyLocalization.getLanguage() == .ar {
        // all view direction right to left
        UIView.appearance().semanticContentAttribute = .forceRightToLeft
    }else{
        // all view direction left to right
        UIView.appearance().semanticContentAttribute = .forceLeftToRight
    }

```

#Change your language

```
EasyLocalization.setLanguage(.ar)
```

#Get your language

```
EasyLocalization.getLanguage()
```
#usage in controllers

```
title = "test navigation title".locale
```

#usage in storyboard

UIButton title

![alt text](https://raw.githubusercontent.com/eldesoky/EasyLocalization/master/images/button.png)

UILabel text

![alt text](https://raw.githubusercontent.com/eldesoky/EasyLocalization/master/images/label.png)

textfield placeholder

![alt text](https://raw.githubusercontent.com/eldesoky/EasyLocalization/master/images/textfield.png)

textview text

![alt text](https://raw.githubusercontent.com/eldesoky/EasyLocalization/master/images/textview.png)

UINavigationItem title

![alt text](https://raw.githubusercontent.com/eldesoky/EasyLocalization/master/images/navigationItem.png)


list of languages keys
```
[
    .en,
    .fr,
    .de,
    .zhHans,
    .zhHant,
    .ja,
    .es,
    .es419,
    .it,
    .nl,
    .ko,
    .ptBR,
    .ptPT,
    .da,
    .fi,
    .nb,
    .sv,
    .ru,
    .pl,
    .tr,
    .ar,
    .th,
    .cs,
    .hu,
    .ca,
    .hr,
    .el,
    .he,
    .ro,
    .sk,
    .uk,
    .id,
    .ms,
    .vi,
    .hi
]
```
## Author

abdelrahman eldesoky, abdelrahman.m.desoky@gmail.com

## License

EasyLocalization is available under the MIT license. See the LICENSE file for more info.
