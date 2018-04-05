//
//  TradionalViewController.swift
//  SwitchLanguageDemo
//
//  Created by Frank.Chen on 2018/4/4.
//  Copyright © 2018年 frank.chen. All rights reserved.
//

import UIKit

class TraditionalViewController: UIViewController {

    @IBOutlet weak var localizationlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // 繁體
        self.localizationlabel.text = LocalizeUtils.shared.localized(withKey: "Hello", withLocalizationFileNmae: "zh-Hant")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
