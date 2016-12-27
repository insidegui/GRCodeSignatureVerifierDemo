//
//  AppDelegate.swift
//  Code Signature Verification Demo
//
//  Created by Guilherme Rambo on 07/02/16.
//  Copyright © 2016 Guilherme Rambo. All rights reserved.
//

import Cocoa
import GRCodeSignatureVerifier

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var statusLabel: NSTextField!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        statusLabel.textColor = NSColor.white
        statusLabel.font = NSFont.systemFont(ofSize: 24.0, weight: NSFontWeightThin)

        GRCodeSignatureVerifier.sharedInstance().codeRequirements = "identifier = \"br.com.guilhermerambo.Code-Signature-Verification-Demo\""
        if GRCodeSignatureVerifier.sharedInstance().isSignatureValid {
            statusLabel.stringValue = "The code signature is valid!"
            window.backgroundColor = NSColor(deviceRed:0.485, green:0.752, blue:0.01, alpha:1)
        } else {
            statusLabel.stringValue = "The code signature is NOT valid!"
            window.backgroundColor = NSColor(deviceRed:0.752, green:0.01, blue:0.01, alpha:1)
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func returnTrue() -> Bool {
        return true
    }


}

