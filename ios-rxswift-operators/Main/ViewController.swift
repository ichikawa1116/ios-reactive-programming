//
//  ViewController.swift
//  ios-rxswift-operators
//
//  Created by Manami Ichikawa on 2018/08/25.
//  Copyright © 2018 Manami Ichikawa. All rights reserved.
//

import UIKit


class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func tapCombineLatest(_ sender: Any) {
        let storyboard = UIStoryboard(name: "ObservableViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ObservableViewController") as! ObservableViewController
        
        navigationController?.pushViewController(vc, animated: true)

    }
    
    @IBAction func tapDisplayImage(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Image", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ImageViewController") as! ImageViewController
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

