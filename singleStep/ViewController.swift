//
//  ViewController.swift
//  singleStep
//
//  Created by Magnus Kruschwitz on 31.01.19.
//  Copyright © 2019 Magnus Kruschwitz. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var wanderLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func stepDownClicked(_ sender: NSButton) {
        if(wanderLabel.frame.origin.y >= 0){
            wanderLabel.frame.origin.y = wanderLabel.frame.origin.y - 1
        }
        else{
            wanderLabel.frame.origin.y = self.view.frame.height
        }
        
    }
    
    @IBAction func closeApplication(_ sender: NSButton) {
        NSApplication.shared.terminate(self)
    }
    
}

