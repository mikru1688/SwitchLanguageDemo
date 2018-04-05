//
//  ViewController.swift
//  SwitchLanguageDemo
//
//  Created by Frank.Chen on 2018/4/4.
//  Copyright © 2018年 frank.chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var englishView: UIView! // 英文
    @IBOutlet weak var simplifiedView: UIView! // 簡體
    @IBOutlet weak var traditionalView: UIView! // 繁體
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressSegmentControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            englishView.isHidden = false
            simplifiedView.isHidden = true
            traditionalView.isHidden = true
        case 1:
            englishView.isHidden = true
            simplifiedView.isHidden = false
            traditionalView.isHidden = true
        case 2:
            englishView.isHidden = true
            simplifiedView.isHidden = true
            traditionalView.isHidden = false
        default:
            break;
        }
        
    }
    
}

