//
//  ViewController.swift
//  UIKitHomeWorkThird
//
//  Created by Масуд Гаджиев on 20.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var screenWidth = view.frame.width
    lazy var screenHeight = view.frame.height
    lazy var screenLeft = screenWidth - 34
    
    lazy var labelHeader = {
        $0.frame = CGRect(x: 0, y: 0, width: screenWidth, height: 335)
        $0.backgroundColor = .systemBlue
        $0.addSubview(logoImage)
        $0.addSubview(titleText)
        $0.addSubview(uiViewInHeader)
        return $0
    }(UIView())
    
    lazy var titleText = textLabel(text: "Сервис квартирных решений \nот сделки до отделки", frame: CGRect(x: 20, y: logoImage.frame.maxY + 22, width: screenWidth - 68, height: 56), font: .boldSystemFont(ofSize: 23), color: .white)
    
    
    lazy var logoImage = {
        $0.image = .logo
        $0.frame = CGRect(x: 20, y: 35, width: 92, height: 34)
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    lazy var uiViewInHeader = {
        $0.backgroundColor = .white
        $0.frame = CGRect(x: 20, y: titleText.frame.maxY + 22, width: screenLeft, height: 135)
        $0.layer.cornerRadius = 10
        $0.addSubview(buyText)
        $0.addSubview(buttonNext)
        $0.addSubview(selectProjectText)
        
        
        return $0
    }(UIView())
    
    lazy var buyText = textLabel(text: "Купить", frame: CGRect(x: 12, y: 14, width: 50, height: 19), font: .boldSystemFont(ofSize: 14))
    
    lazy var selectProjectText = textLabel(text: "Подберем подходящий \nобъект", frame: CGRect(x: 12, y: buyText.frame.maxY + 5, width: screenWidth - 162, height: 34), font: .systemFont(ofSize: 14, weight: .light), color: .gray)
    
    lazy var buttonNext = {
        $0.frame = CGRect(x: 337, y: 14 , width: 8, height: 16)
        $0.setImage(UIImage(named: "nextBtn"), for: .normal)
        
        return $0
    } (UIButton(primaryAction: UIAction(handler: { [weak self] _ in
        guard let self else {return}
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    })))
    
    lazy var uslugiText = textLabel(text: "Услуги", frame: CGRect(x: 17, y: labelHeader.frame.maxY + 25, width: screenWidth - 300, height: 30))
    
    lazy var uiLabelTwo = {
        $0.backgroundColor = .cyan
        $0.frame = CGRect(x: 17, y: uslugiText.frame.maxY + 17, width: screenLeft, height: 95)
        $0.layer.cornerRadius = 10
        $0.addSubview(insuranceText)
        $0.addSubview(descriptionInsurance)
        return $0
    }(UIView())
    
    lazy var insuranceText = textLabel(text: "Страхование", frame: CGRect(x: 18, y: 23, width: 86, height: 11), font: .boldSystemFont(ofSize: 13))
    
    lazy var descriptionInsurance = textLabel(text: "Защитите имущество \nздоровье и жизнь", frame: CGRect(x: 18, y: insuranceText.frame.maxY + 6, width: 134, height: 32), font: .systemFont(ofSize: 12, weight: .light))
    
    lazy var homeVariants = textLabel(text: "Жилые комплексы", frame: CGRect(x: 17, y: uiLabelTwo.frame.maxY + 30, width: screenWidth - 140, height: 20))
    
    lazy var uiCartView = {
        $0.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        $0.frame = CGRect(x: 17, y: homeVariants.frame.maxY + 29, width: screenLeft, height: 200)
        $0.layer.cornerRadius = 10
        $0.addSubview(imageHomeInCart)
        $0.addSubview(nameHome)
        $0.addSubview(priceHome)
        $0.addSubview(adress)
      return $0
    }(UIView())
    
    lazy var imageHomeInCart = {
        $0.image = UIImage(named: "homeCart")
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 10
        $0.clipsToBounds = true
        $0.frame = CGRect(x: 0, y: 0, width: screenLeft, height: 122)
        return $0
    }(UIImageView())
    
    lazy var nameHome = textLabel(text: "Ольховый Квартал", frame: CGRect(x: 12, y: imageHomeInCart.frame.maxY + 10, width: screenWidth - 240, height: 13), font: .boldSystemFont(ofSize: 15))
    
    lazy var priceHome = textLabel(text: "от 8 029 445 ₽", frame: CGRect(x: 12, y: nameHome.frame.maxY + 10, width: screenWidth - 260, height: 13), font: .boldSystemFont(ofSize: 15))
    
    lazy var adress = textLabel(text: "Москва, поселение Сосенское, деревня Столбово", frame: CGRect(x: 12, y: priceHome.frame.maxY + 10, width: screenLeft, height: 13), font: .systemFont(ofSize: 13, weight: .light), color: .gray)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(labelHeader)
        view.addSubview(uslugiText)
        view.addSubview(uiLabelTwo)
        view.addSubview(homeVariants)
        view.addSubview(uiCartView)
        
    }
    
   
    
    private func textLabel(text: String, frame: CGRect, font: UIFont = .boldSystemFont(ofSize: 24), color: UIColor = .black) -> UILabel{
        let textLabel = UILabel(frame: frame)
        textLabel.text = text
        textLabel.font = font
        textLabel.textColor = color
        textLabel.numberOfLines = 0
        return textLabel
    }


}

