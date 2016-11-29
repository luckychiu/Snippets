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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createNewSnippet(_ sender: Any) {
        let alert = UIAlertController(title: "Select a snippet type",
                                      message: nil,
                                      preferredStyle: .actionSheet)
        let textAction = UIAlertAction(title: "Text", style: .default) {
            (alert: UIAlertAction!) -> Void in
            self.data.append(SnippetData(snippetType: .text))
        }
        let photoAction = UIAlertAction(title: "Photo", style: .default) {
            (alert: UIAlertAction!) -> Void in
            self.data.append(SnippetData(snippetType: .photo))
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(textAction)
        alert.addAction(photoAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
}

