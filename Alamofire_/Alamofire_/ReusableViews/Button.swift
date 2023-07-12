//
//  Button.swift
//  Alamofire_
//
//  Created by Mac on 11/07/2023.
//

import UIKit


class Button: UIButton {

//    override init(frame String: CGRect) {
//    super.init(frame: frame)
    init(image: String) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
    self.setImage(UIImage(named: image), for: .normal)
}

required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}
}
