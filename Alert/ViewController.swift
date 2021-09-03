//
//  ViewController.swift
//  Alert
//
//  Created by dee_wu on 2019/10/15.
//  Copyright © 2019 dee_wu. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var label: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view
        
    }
    
    override func viewDidAppear() {
        
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    
    @IBAction func showAlert(_ sender: NSButton) {
        alert()
    }
    
    func alert() {
        let alert = NSAlert()
        alert.messageText = "Alert message"
        alert.informativeText = "Detail description"
        alert.addButton(withTitle: "ignore")
        alert.addButton(withTitle: "OK")
        alert.addButton(withTitle: "NO")
        //let result = alert.runModal()
        
       /* alert.beginSheetModal(for: view.window!){(response) -> Void in
            print("?")
        }*/
        alert.beginSheetModal(for: view.window!,completionHandler: {(response) -> Void in
            self.label.stringValue = "\(response.rawValue)"})
        
//        switch result{
//        case .alertFirstButtonReturn:
//            print("first")
//        case .alertSecondButtonReturn:
//            print("second")
//        case .alertThirdButtonReturn:
//            print("third")
//        default:
//            break
//        }
    }

}

