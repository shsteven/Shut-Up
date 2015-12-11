//
//  AppDelegate.swift
//  Shut Up
//
//  Created by Steven on 4/12/14.
//  Copyright (c) 2014 Magical Bits. All rights reserved.
//

import Cocoa
import PopStatusItem

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    let popStatusItem = PopStatusItem(image: NSImage(named: "buttonImage")!)
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        
        
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        let windowController = storyboard.instantiateControllerWithIdentifier("PopStatusItem") as? NSWindowController
        popStatusItem.windowController = windowController
        
        popStatusItem.highlight = true // Default is false
        popStatusItem.activate = true // Default is false
        
        popStatusItem.showPopover() // Show popover on startup

        
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

