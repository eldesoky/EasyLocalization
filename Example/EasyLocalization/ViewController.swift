//
//  ViewController.swift
//  EasyLocalization
//
//  Created by a.desoky@intcore.net on 02/09/2018.
//  Copyright (c) 2018 a.desoky@intcore.net. All rights reserved.
//

import UIKit
import EasyLocalization
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "test navigation title".locale
    }
    
    @IBAction func englishAction(_ sender: Any) {
        EasyLocalization.setLanguage(.en)
        reload()
    }
    
    @IBAction func arabicAction(_ sender: Any) {
        EasyLocalization.setLanguage(.ar)
        reload()
    }
    
    func reload() {
        let vc =  self.storyboard?.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = vc
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

