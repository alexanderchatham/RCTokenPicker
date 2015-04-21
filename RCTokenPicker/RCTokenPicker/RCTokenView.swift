//
//  RCTokenView.swift
//  RCTokenPicker
//
//  Created by Reid Chatham on 4/20/15.
//  Copyright (c) 2015 Chatham Engineering Technologies LLC. All rights reserved.
//

import UIKit

protocol RCTokenViewDelegate {
    
    func tokenViewSelected (contactView: RCTokenView)
    func tokenViewWasUnselected (contactView: RCTokenView)
    func tokenViewShouldBeRemoved (contactView: RCTokenView)
}

class RCTokenView: UIView {

    ///////////////////////////////
    //////PROPERTIES///////////////
    ///////////////////////////////
    
    let name: String
    var label: UILabel
    let textField: RCTokenTextField
    var isSelected: Bool
    var showComma: Bool
    
    let maxWidth: CGFloat
    let minWidth: CGFloat
    var delegate: RCTokenViewDelegate?
    let gradientLayer: CAGradientLayer
    
    let style: RCTokenViewStyle
    let selectedStyle: RCTokenViewStyle
    
    ///////////////////////////////
    //////CONSTANTS////////////////
    ///////////////////////////////
    
    let kHorizontalPadding = 3
    let kVerticalPadding = 2
    
    let kDefaultBorderWidth:CGFloat = 0
    let kDefaultCornerRadiusFactor:CGFloat = 5
    
    let kColorText = UIColor(red: 0.0, green: 122.0/255.0, blue: 1.0, alpha: 1.0)
    let kColorGradientTop:UIColor? = nil
    let kColorGradientBottom:UIColor? = nil
    let kColorBorder:UIColor? = nil
    
    let kColorSelectedText = UIColor.whiteColor()
    let kColorSelectedGradientTop = UIColor(red: 0.0, green: 122.0/255.0, blue: 1.0, alpha: 1.0)
    let kColorSelectedGradientBottom = UIColor(red: 0.0, green: 122.0/255.0, blue: 1.0, alpha: 1.0)
    let kColorSelectedBorder:UIColor? = nil
    
    /////////////////////////////////////
    /////INITIALIZERS////////////////////
    /////////////////////////////////////
    
    init(name: String) {
        
        self.name = name
        self.style = RCTokenViewStyle(textColor: kColorText, gradientTop: kColorGradientTop, gradientBottom: kColorGradientBottom, borderColor: kColorBorder, borderWidth: kDefaultBorderWidth, cornerRadiusFactor: kDefaultCornerRadiusFactor)
        self.selectedStyle = RCTokenViewStyle(textColor: kColorSelectedText, gradientTop: kColorSelectedGradientTop, gradientBottom: kColorSelectedGradientBottom, borderColor: kColorSelectedBorder, borderWidth: kDefaultBorderWidth, cornerRadiusFactor: kDefaultCornerRadiusFactor)
        self.isSelected = false
        self.showComma = false
        
        self.label = UILabel()
        self.textField = RCTokenTextField()
        
        self.maxWidth = CGFloat(2 * kHorizontalPadding)
        self.minWidth = CGFloat(2 * kVerticalPadding)
        
        self.gradientLayer = CAGradientLayer()
        
        super.init(coder: NSCoder())
        self.setupView()
    }
    
    init(name: String, style: RCTokenViewStyle, selectedStyle: RCTokenViewStyle) {
        
        self.name = name
        self.style = style
        self.selectedStyle = selectedStyle
        self.isSelected = false
        self.showComma = false
        
        self.label = UILabel()
        self.textField = RCTokenTextField()
        
        self.maxWidth = CGFloat(2 * kHorizontalPadding)
        self.minWidth = CGFloat(2 * kVerticalPadding)
        
        self.gradientLayer = CAGradientLayer()
        
        super.init(coder: NSCoder())
        self.setupView()
    }
    
    init(name: String, style: RCTokenViewStyle, selectedStyle: RCTokenViewStyle, showComma: Bool) {
        
        self.name = name
        self.style = style
        self.selectedStyle = selectedStyle
        self.isSelected = false
        self.showComma = showComma
        
        self.label = UILabel()
        self.textField = RCTokenTextField()
        
        self.maxWidth = CGFloat(2 * kHorizontalPadding)
        self.minWidth = CGFloat(2 * kVerticalPadding)
        
        self.gradientLayer = CAGradientLayer()
        
        super.init(coder: NSCoder())
        self.setupView()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        
        self.label.backgroundColor = UIColor.clearColor()
        if self.showComma {
            self.label.text = String("")
        }
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
