//
//  ViewController.swift
//  MultiLineButton
//
//  Created by ashida on 2016/08/28.
//  Copyright © 2016年 v-force.co.jp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btnTop: UIFontAwesomeButton!
    @IBOutlet weak var btnBottom: UIFontAwesomeButton!
    @IBOutlet weak var btnLeft: UIFontAwesomeButton!
    @IBOutlet weak var btnRight: UIFontAwesomeButton!
    @IBOutlet weak var btnLeft30_12: UIFontAwesomeButton!
    @IBOutlet weak var btnRight30_12: UIFontAwesomeButton!
    @IBOutlet weak var btnLeft12_30: UIFontAwesomeButton!
    @IBOutlet weak var btnRight12_30: UIFontAwesomeButton!
    @IBOutlet weak var btnLeft46_8: UIFontAwesomeButton!
    @IBOutlet weak var btnRight46_8: UIFontAwesomeButton!
    @IBOutlet weak var btnLeft8_46: UIFontAwesomeButton!
    @IBOutlet weak var btnRight8_46: UIFontAwesomeButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnTop.setAwesomeMixTitle(
            .Search, AwesomeFontSize: 28
            , titleText: "上アイコン"
            , iconAlign: .top
            , AwesomeFontColor: UIColor.orangeColor()
            , titleTextFontName: "HiraginoSans-W3"
            , titleTextFontSize: 14.0
            , titleTextColor: UIColor.grayColor())

        btnBottom.setAwesomeMixTitle(
            .User, AwesomeFontSize: 38
            , titleText: "下アイコン"
            , iconAlign: .bottom
            , AwesomeFontColor: UIColor.orangeColor()
            , titleTextFontName: "HiraginoSans-W3"
            , titleTextFontSize: 14.0
            , titleTextColor: UIColor.grayColor())

        btnLeft.setAwesomeMixTitle(
            .User, AwesomeFontSize: 24
            , titleText: " 左アイコン"
            , iconAlign: .left
            , AwesomeFontColor: UIColor.orangeColor()
            , titleTextFontName: "Helvetica Bold Oblique"
            , titleTextFontSize: 24
            , titleTextColor: UIColor.whiteColor())

        btnRight.setAwesomeMixTitle(
            .User, AwesomeFontSize: 24
            , titleText: "右アイコン "
            , iconAlign: AwesomeIconAlignment.right
            , AwesomeFontColor: UIColor.orangeColor()
            , titleTextFontName: "HiraginoSans-W3"
            , titleTextFontSize: 24
            , titleTextColor: UIColor.grayColor())

        btnLeft30_12.setAwesomeMixTitle(
            .User, AwesomeFontSize: 30
            , titleText: " 左アイコン"
            , iconAlign: .left
            , AwesomeFontColor: UIColor.orangeColor()
            , titleTextFontName: "Helvetica Bold Oblique"
            , titleTextFontSize: 12
            , titleTextColor: UIColor.whiteColor())
        
        btnRight30_12.setAwesomeMixTitle(
            .User, AwesomeFontSize: 30
            , titleText: "右アイコン "
            , iconAlign: AwesomeIconAlignment.right
            , AwesomeFontColor: UIColor.orangeColor()
            , titleTextFontName: "HiraginoSans-W3"
            , titleTextFontSize: 12
            , titleTextColor: UIColor.grayColor())

        btnLeft12_30.setAwesomeMixTitle(
            .User, AwesomeFontSize: 12
            , titleText: " 左アイコン"
            , iconAlign: .left
            , AwesomeFontColor: UIColor.orangeColor()
            , titleTextFontName: "Helvetica Bold Oblique"
            , titleTextFontSize: 30
            , titleTextColor: UIColor.whiteColor())
        
        btnRight12_30.setAwesomeMixTitle(
            .User, AwesomeFontSize: 12
            , titleText: "右アイコン "
            , iconAlign: AwesomeIconAlignment.right
            , AwesomeFontColor: UIColor.orangeColor()
            , titleTextFontName: "HiraginoSans-W3"
            , titleTextFontSize: 30
            , titleTextColor: UIColor.grayColor())

        btnLeft46_8.setAwesomeMixTitle(
            .User, AwesomeFontSize: 46
            , titleText: " 左アイコン"
            , iconAlign: .left
            , AwesomeFontColor: UIColor.orangeColor()
            , titleTextFontName: "Helvetica Bold Oblique"
            , titleTextFontSize: 8
            , titleTextColor: UIColor.whiteColor())
        
        btnRight46_8.setAwesomeMixTitle(
            .User, AwesomeFontSize: 46
            , titleText: "右アイコン "
            , iconAlign: AwesomeIconAlignment.right
            , AwesomeFontColor: UIColor.orangeColor()
            , titleTextFontName: "HiraginoSans-W3"
            , titleTextFontSize: 8
            , titleTextColor: UIColor.grayColor())
        
        btnLeft8_46.setAwesomeMixTitle(
            .User, AwesomeFontSize: 8
            , titleText: " 左アイコン"
            , iconAlign: .left
            , AwesomeFontColor: UIColor.orangeColor()
            , titleTextFontName: "Helvetica Bold Oblique"
            , titleTextFontSize: 46
            , titleTextColor: UIColor.whiteColor())
        
        btnRight8_46.setAwesomeMixTitle(
            .User, AwesomeFontSize: 8
            , titleText: "右アイコン "
            , iconAlign: AwesomeIconAlignment.right
            , AwesomeFontColor: UIColor.orangeColor()
            , titleTextFontName: "HiraginoSans-W3"
            , titleTextFontSize: 46
            , titleTextColor: UIColor.grayColor())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

