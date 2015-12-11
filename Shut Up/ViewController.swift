//
//  ViewController.swift
//  Shut Up
//
//  Created by Steven on 4/12/14.
//  Copyright (c) 2014 Magical Bits. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.startObserving()
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    
    func startObserving() {
        let notificationCenter = NSWorkspace.sharedWorkspace().notificationCenter
        notificationCenter.addObserverForName(NSWorkspaceScreensDidSleepNotification,
            object: nil,
            queue: nil) {
                notification in
                
            self.mute()
        }
        
    }

    
    func mute() {
        print("mute!")
        
        let appleScript = NSAppleScript(source: "set volume output volume 0")
        appleScript?.executeAndReturnError(nil)
        
    }
    
    func unmute() {
        
    }

}

