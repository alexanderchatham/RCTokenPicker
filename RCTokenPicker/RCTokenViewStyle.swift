//
//  RCTokenViewStyle.swift
//  RCTokenPicker
//
//  Created by Reid Chatham on 4/20/15.
//  Copyright (c) 2015 Chatham Engineering Technologies LLC. All rights reserved.
//

import UIKit

class RCTokenViewStyle: NSObject {
   
    ///////////////////////////////
    //////PROPERTIES///////////////
    ///////////////////////////////
    
    let textColor: UIColor
    let gradientTop: UIColor?
    let gradientBottom: UIColor?
    let borderColor: UIColor?
    let borderWidth: CGFloat
    let cornerRadiusFactor: CGFloat
    
    /////////////////////////////////////
    /////INITIALIZERS////////////////////
    /////////////////////////////////////
    
    init(textColor: UIColor, gradientTop: UIColor?, gradientBottom: UIColor?, borderColor: UIColor?, borderWidth: CGFloat, cornerRadiusFactor: CGFloat) {
        
        self.textColor = textColor
        self.gradientTop = gradientTop
        self.gradientBottom = gradientBottom
        self.borderColor = borderColor
        self.borderWidth = borderWidth
        self.cornerRadiusFactor = cornerRadiusFactor
        super.init()
    }
}
