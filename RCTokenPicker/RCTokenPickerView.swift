//
//  RCTokenPickerView.swift
//  RCTokenPicker
//
//  Created by Reid Chatham on 4/20/15.
//  Copyright (c) 2015 Chatham Engineering Technologies LLC. All rights reserved.
//


//
//
//
//
//
//


import UIKit

protocol RCTokenPickerViewDelegate {
    
}

class RCTokenPickerView: UIView, UITextViewDelegate {

    let nibName = "RCTokenPickerView"
    var view: UIView!
    
    ///////////////////////////////
    //////PROPERTIES///////////////
    ///////////////////////////////
    
    @IBOutlet weak var toLabel: UILabel!
    
    @IBOutlet weak var addContactButton: UIButton!
    
    @IBOutlet weak var textView: UITextView!
    
    ///////////////////////////////
    /////INITIALIZERS//////////////
    ///////////////////////////////
    
    override init(frame: CGRect) {
        self.textView = RCTokenTextView()
        self.textView.textContainer.exclusionPaths = [UIBezierPath(rect: toLabel.frame), UIBezierPath(rect: addContactButton.frame)]
        
        super.init(frame: frame)
        
        setup()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setup()
    }
    
    ///////////////////////////////
    ////////FUNCTIONS//////////////
    ///////////////////////////////
    
    @IBAction func addContactButtonPressed(sender: AnyObject) {
        //Can be extended to segue to a contact list for additiional picking options
    }
    
    func textViewDidChange(textView: UITextView) {
        
    }
    
    func setup() {
        // setup the view from .xib
        
        //messageLabel.lineBreakMode = NSLineBreakMode.ByWordWrapping
        
        view = loadViewFromNib()
        view.frame = self.bounds
        view.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
