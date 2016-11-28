//
//  ViewController.swift
//  Snippets
//
//  Created by Lucky Chiu on 28/11/2016.
//  Copyright © 2016 ASOKA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data: [SnippetData] = [SnippetData]()

    @IBAction func createNewSnippet(_ sender: Any) {
        let newSnippet = SnippetData()
        data.append(newSnippet)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

