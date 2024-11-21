//
//  SecondViewController.swift
//  UIKitHomeWorkThird
//
//  Created by Масуд Гаджиев on 21.11.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    lazy var screenWidth = view.frame.width
    lazy var screenHeight = view.frame.height
    lazy var screenLeft = screenWidth - 40
    
    lazy var logoImage = {
        $0.image = .logo
        $0.frame = CGRect(x: 20, y: 35, width: 92, height: 34)
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    lazy var titleText = textLabel(text: "Ольховый Квартал", frame: CGRect(x: 20, y: logoImage.frame.maxY + 33, width: screenWidth - 75, height: 28), font: .boldSystemFont(ofSize: 23))
    
    lazy var imageMain = {
        $0.image = UIImage(named: "homeInSecond")
        $0.layer.cornerRadius = 10
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        $0.frame = CGRect(x: 20, y: titleText.frame.maxY + 28, width: screenLeft, height: 240)
        return $0
    }(UIImageView())
    
    lazy var textPrice = textLabel(text: "от 8 029 445 ₽", frame: CGRect(x: 20, y: imageMain.frame.maxY + 20, width: screenLeft, height: 12), font: .boldSystemFont(ofSize: 15))
    
    lazy var adress = textLabel(text: "Москва, поселение Сосенское, деревня Столбово", frame: CGRect(x: 20, y: textPrice.frame.maxY + 10, width: screenLeft, height: 11), font: .systemFont(ofSize: 14, weight: .light))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        view.addSubview(logoImage)
        view.addSubview(titleText)
        view.addSubview(imageMain)
        view.addSubview(textPrice)
        view.addSubview(adress)
    }
    
    private func textLabel(text: String, frame: CGRect, font: UIFont = .boldSystemFont(ofSize: 24), color: UIColor = .white) -> UILabel{
        let textLabel = UILabel(frame: frame)
        textLabel.text = text
        textLabel.font = font
        textLabel.textColor = color
        textLabel.numberOfLines = 0
        return textLabel
    }
}
