//
//  RCTokenPickerView.swift
//  RCTokenPicker
//
//  Created by Reid Chatham on 4/20/15.
//  Copyright (c) 2015 Chatham Engineering Technologies LLC. All rights reserved.
//

import UIKit

class RCTokenPickerView: UIView, UITextViewDelegate {

    ///////////////////////////////
    //////PROPERTIES///////////////
    ///////////////////////////////
    
    @IBOutlet weak var toLabel: UILabel!
    
    @IBOutlet weak var addContactButton: UIButton!
    
    @IBOutlet weak var textView: UITextView!
    
    ///////////////////////////////
    /////INITIALIZERS//////////////
    ///////////////////////////////
    
    init() {
        self.textView = RCTokenTextView()
        self.textView.textContainer.exclusionPaths = [UIBezierPath(rect: toLabel.frame), UIBezierPath(rect: addContactButton.frame)]
        
        super.init(frame: CGRect())
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    ///////////////////////////////
    ////////FUNCTIONS//////////////
    ///////////////////////////////
    
    @IBAction func addContactButtonPressed(sender: AnyObject) {
        //Can be extended to segue to a contact list for additiional picking options
    }
    
    func textViewDidChange(textView: UITextView) {
        
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
