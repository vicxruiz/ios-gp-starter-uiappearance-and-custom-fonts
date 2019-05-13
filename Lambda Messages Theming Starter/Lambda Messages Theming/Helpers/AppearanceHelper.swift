//
//  AppearanceHelper.swift
//  Lambda Messages Theming
//
//  Created by Andrew R Madsen on 1/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

enum AppearanceHelper {
    static var lambdaRed = UIColor.red
    static var backgroundGray = UIColor.gray
    
    static func typerighterFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "". size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle)
    }
    
    
    static func setDarkAppearance() {
        UINavigationBar.appearance().barTintColor = backgroundGray
        UISegmentedControl.appearance().tintColor = lambdaRed
        UIBarButtonItem.appearance().tintColor = lambdaRed
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: .white]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        UITextField.appearance().tintColor = lambdaRed
        UITextView.appearance().tintColor = lambdaRed
    }
    
    static func style(button: UIButton) {
        button.titleLabel.font = typerighterFont(with: .callout, pointSize: 30)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = lambdaRed
        button.layer.cornerRadius = 8
    }
    
}


