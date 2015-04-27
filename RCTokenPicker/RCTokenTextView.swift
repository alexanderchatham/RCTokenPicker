//
//  RCTokenTextView.swift
//  RCTokenPicker
//
//  Created by Reid Chatham on 4/27/15.
//  Copyright (c) 2015 Chatham Engineering Technologies LLC. All rights reserved.
//

import UIKit

protocol RCTokenTextViewDelegate {
    
    func textFieldDidChange(textField: RCTokenTextView)
    func textFieldDidHitBackspaceWithEmptyText(textField: RCTokenTextView)
}

class RCTokenTextView: UITextView {
    
    ///////////////////////////////
    //////PROPERTIES///////////////
    ///////////////////////////////
    
    var contactTextViewDelegate: RCTokenTextViewDelegate?
    
    ///////////////////////////////
    /////INITIALIZERS//////////////
    ///////////////////////////////
    
    init() {
        super.init(coder: NSCoder())
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("textFieldDidChange:"), name: UITextFieldTextDidChangeNotification, object: nil)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    ///////////////////////////////
    ////////FUNCTIONS//////////////
    ///////////////////////////////
    
    func keyboardInputShouldDelete(textField: UITextField) -> Bool {
        var shouldDelete = true
        return shouldDelete
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
}

