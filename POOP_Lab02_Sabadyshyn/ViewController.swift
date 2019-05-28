//
//  ViewController.swift
//  POOP_Lab02_Sabadyshyn
//
//  Created by Max Sabadyshyn on 5/23/19.
//  Copyright © 2019 Maksym Sabadyshyn. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSWindowDelegate {
    
    @IBOutlet weak var sizeChangedInformator: NSTextField!
    
    override func viewDidAppear() {
        view.window?.delegate = self
    }
    
    func windowDidResize(_ notification: Notification) {
        // This will print the window's size each time it is resized.
        sizeChangedInformator.stringValue = NSStringFromSize((view.window?.frame.size)!)
    }
}
