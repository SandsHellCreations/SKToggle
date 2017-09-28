//
//  SKToggle.swift
//  SKToggle
//
//  Created by Sierra 2 on 27/09/17.
//  Copyright © 2017 SandsHellCreations. All rights reserved.
//

import UIKit

extension Bool {
    @discardableResult
    public mutating func toggle() -> Bool {
        self = !self
        return self
    }
}

@IBDesignable
class SKToggle: UIButton {
    
    @IBInspectable
    open var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
        }
    }
    
    @IBInspectable
    open var onStateText: String? {
        didSet {
            if let text = onStateText {
                setTitle(text, for: .normal)
                self.titleLabel?.text = text
            }
        }
    }
    
    @IBInspectable
    open var offStateText: String?
    
    @IBInspectable
    open var onTextColor: UIColor? {
        didSet {
            setTitleColor(onTextColor ?? UIColor(), for: .normal)
        }
    }
    
    @IBInspectable
    open var offTextColor: UIColor?
    
    @IBInspectable
    open var onImage: UIImage? {
        didSet {
            if let image = onImage {
                setImage(image, for: .normal)
                self.imageView?.image = onImage
            }
        }
    }
    
    @IBInspectable
    open var offImage: UIImage?
    
    @IBInspectable
    open var onColor: UIColor? {
        didSet {
            if let color = onColor {
                self.layer.backgroundColor = color.cgColor
            }
        }
    }
    
    @IBInspectable
    open var offColor: UIColor?
    
    @IBInspectable
    open var isBorder: Bool = false
    
    @IBInspectable
    open var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    open var onBorderColor: UIColor? {
        didSet {
            if isBorder {
                self.layer.borderColor = onBorderColor?.cgColor
            }
        }
    }
    
    @IBInspectable
    open var offBorderColor: UIColor?
    
    var isOn = false
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        toggleBtn()
    }
}

extension SKToggle {
    func toggleBtn() {
        if let onText = self.onStateText, let offText = self.offStateText {
            self.setTitle(isOn ? onText : offText, for: .normal)
        }
        
        if let image1 = self.onImage, let image2 = self.offImage {
            self.setImage(isOn ? image1 : image2, for: .normal)
        }
        
        if let color1 = self.onColor, let color2 = self.offColor {
            self.backgroundColor = isOn ? color1 : color2
        }
        
        if isBorder {
            if let onBC = onBorderColor, let offBC = offBorderColor {
                self.layer.borderColor = isOn ? onBC.cgColor : offBC.cgColor
            }
        }
        
        if let color1 = onTextColor, let color2 = offTextColor {
            self.setTitleColor(isOn ? color1 : color2, for: .normal)
        }
        self.isOn.toggle()
    }
}
