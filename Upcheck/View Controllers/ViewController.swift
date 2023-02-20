//
//  ViewController.swift
//  Upcheck
//
//  Created by Thinkwik 27 on 20/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet weak var lblHeader: UILabel!
    @IBOutlet weak var lblHeadDiscription: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var lblLogin: UILabel!
    @IBOutlet weak var btnRegister: UIButton!
    
    //MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpUI()
    }
    
    //MARK: - Set UI
    
    
    func setUpUI()
    {
        self.btnRegister.layer.cornerRadius = 20
        self.btnRegister.layer.borderWidth = 2
        self.btnRegister.layer.borderColor = ColorConstants.color_p2.cgColor
        self.btnRegister.dropShadow(scale: true)
        self.setFonts()
    }

    func setFonts() {
        lblHeader.font = Fonts.sharedObject().getAppFontFont(customFont: .Inter, family: .ExtraBold, size: 30)
        lblHeadDiscription.font = Fonts.sharedObject().getAppFontFont(customFont: .Inter, family: .ExtraBold, size: 25)
        lblDescription.font = Fonts.sharedObject().getAppFontFont(customFont: .Inter, family: .Medium, size: 16)
        btnRegister.titleLabel?.font = Fonts.sharedObject().getAppFontFont(customFont: .Inter, family: .Medium, size: 20)

    }



}

extension UIButton {
    
    // OUTPUT 1
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = ColorConstants.color_black.cgColor
        layer.shadowOpacity = 0.1
        layer.shadowOffset = CGSize(width: 3, height: 3)
        layer.shadowRadius = 0
        
//        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
}

