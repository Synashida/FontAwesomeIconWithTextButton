//
//  UIMultiLineFontAwesomeButton.swift
//  MultiLineButton
//
//  Created by ashida on 2016/08/28.
//  Copyright © 2016年 v-force.co.jp. All rights reserved.
//
import Foundation
import UIKit
import FontAwesome_swift

enum AwesomeIconAlignment {
    case top
    case bottom
    case left
    case right
}

@IBDesignable
class UIFontAwesomeButton: UIButton {
    
    func setAwesomeMixTitle(awesomeFontType: FontAwesome, AwesomeFontSize: CGFloat, titleText: String, iconAlign: AwesomeIconAlignment = .left, AwesomeFontColor: UIColor! = nil, titleTextFontName: String = "", titleTextFontSize: CGFloat = 0, titleTextColor: UIColor! = nil) {
        
        // Awesomefontの設定
        let afColor = AwesomeFontColor == nil ? self.titleLabel?.textColor : AwesomeFontColor
        let btnIcon = String.fontAwesomeIconWithName(awesomeFontType)
        var btnAttr = NSMutableAttributedString(string: btnIcon)
        btnAttr.addAttributes([NSForegroundColorAttributeName: afColor], range: NSMakeRange(0, btnIcon.characters.count))
        btnAttr.addAttributes([NSFontAttributeName: UIFont.fontAwesomeOfSize(AwesomeFontSize)], range: NSMakeRange(0, btnIcon.characters.count))
        
        // 通常テキスト設定
        let titleAttributeText = NSMutableAttributedString(string: titleText)
        let fontName = titleTextFontName == "" ? self.titleLabel?.font.fontName : titleTextFontName
        let fontSize = titleTextFontSize <= 0 ? self.titleLabel?.font.pointSize : titleTextFontSize
        if titleText != "" {
            let txtColor = titleTextColor == nil ? self.titleLabel?.textColor : titleTextColor
            titleAttributeText.addAttributes([NSFontAttributeName: UIFont(name: fontName!, size: fontSize!)!], range: NSMakeRange(0, titleText.characters.count))
            titleAttributeText.addAttributes([NSForegroundColorAttributeName: txtColor], range: NSMakeRange(0, titleText.characters.count))
        }
        
        switch iconAlign {
        case .top:
            let separaterChar = NSMutableAttributedString(string: "\n\n")
            separaterChar.addAttributes([NSFontAttributeName: UIFont(name: fontName!, size: fontSize! * 0.3)!], range: NSMakeRange(0, separaterChar.length))
            btnAttr.appendAttributedString(separaterChar)
            btnAttr.appendAttributedString(titleAttributeText)
        case .bottom:
            let separaterChar = NSMutableAttributedString(string: "\n\n")
            separaterChar.addAttributes([NSFontAttributeName: UIFont(name: fontName!, size: fontSize! * 0.3)!], range: NSMakeRange(0, separaterChar.length))
            
            separaterChar.appendAttributedString(btnAttr)
            titleAttributeText.appendAttributedString(separaterChar)
            btnAttr = titleAttributeText
        case .left:
            let baseLineHieght:CGFloat = getBaseLineHeight(AwesomeFontSize, fontSize: fontSize!)
            if AwesomeFontSize >= fontSize! {
                titleAttributeText.addAttribute(NSBaselineOffsetAttributeName, value: baseLineHieght, range: NSMakeRange(0, titleAttributeText.length))
            } else if AwesomeFontSize < fontSize! {
                btnAttr.addAttribute(NSBaselineOffsetAttributeName, value: baseLineHieght, range: NSMakeRange(0, btnAttr.length))
            }
            btnAttr.appendAttributedString(titleAttributeText)
        case .right:
            let baseLineHieght:CGFloat = getBaseLineHeight(AwesomeFontSize, fontSize: fontSize!)
            if AwesomeFontSize > fontSize! {
                titleAttributeText.addAttribute(NSBaselineOffsetAttributeName, value: baseLineHieght, range: NSMakeRange(0, titleAttributeText.length))
            } else if AwesomeFontSize < fontSize! {
                btnAttr.addAttribute(NSBaselineOffsetAttributeName, value: baseLineHieght, range: NSMakeRange(0, btnAttr.length))
            }
            titleAttributeText.appendAttributedString(btnAttr)
            btnAttr = titleAttributeText
        }
        
        self.titleLabel?.numberOfLines = 0
        self.titleLabel?.textAlignment = .Center
        self.setAttributedTitle(btnAttr, forState: .Normal)
    }

    /**
     テキストとFontawesomeのサイズが異なるとベースライン下基準になってしまうため、垂直中央によるようにLineHeightを計算する。
     計算は fontawesome / 2 - font / 2 でフォントを中央分割した後での高さの差を求め、その値の平方根を取得し、
     さらにその平方根の平方根を足した値になる。値の根拠は観察値から導き出したものであるので、環境の変化に非常に弱い。
     よって適用する環境をよく観察してオフセット値の算出をする必要がある。
     
     - parameter AwesomeFontSize: FontAwesomeのフォントサイズ
     - parameter fontSize:        テキストのフォントサイズ
     
     - returns: ベースラインオフセット
     */
    private func getBaseLineHeight(AwesomeFontSize: CGFloat, fontSize: CGFloat) -> CGFloat {
        var baseLineHieght:CGFloat = sqrt(abs(AwesomeFontSize / 2 - fontSize / 2)) + sqrt(sqrt(abs(AwesomeFontSize / 2 - fontSize / 2)))
        if abs(AwesomeFontSize / 2 - fontSize / 2) > 10.0 {
            baseLineHieght = baseLineHieght + sqrt(sqrt(abs(AwesomeFontSize / 2 - fontSize / 2)))
        } else if baseLineHieght == 0 {
            baseLineHieght = 0.5
        }
        return baseLineHieght
    }
    
    // viewの枠線の色
    @IBInspectable var borderColor: UIColor = UIColor.clearColor() {
        didSet {
            self.layer.borderColor = borderColor.CGColor
        }
    }
    
    // viewの枠線の太さ
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    // viewの角丸
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            self.layer.masksToBounds = true
        }
    }
}
