//
//  SearchTextField.swift
//  WeatherApp
//
//  Created by Kostya Lee on 03/10/21.
//

import UIKit

class SearchTextField: UITextField {
    
    private var view: UIView!
    private func setTextField(_ tf: UITextField) {
        
        tf.frame = CGRect(x: view.frame.width * 0.5, y: view.frame.height * 0.7,
                          width: view.frame.height * 0.5, height: view.frame.height * 0.05)
        
        tf.addConstraint(tf.heightAnchor.constraint(equalToConstant: view.frame.height * 0.06))
        tf.addConstraint(tf.widthAnchor.constraint(equalToConstant: view.frame.width * 0.6))
    
//        tf.addConstraint(tf.topAnchor.constraint(equalTo: view.topAnchor, constant: 20)) //view.frame.height * 0.7
        
        tf.layer.cornerRadius = tf.frame.height * 0.6
        layer.masksToBounds = true
        
        tf.layer.borderWidth = 1.25
        tf.layer.borderColor = UIColor(named: "TFColor")!.cgColor
        
        
        tf.font = UIFont(name: "Noto Sans Display", size: tf.frame.height * 0.8)
        tf.textColor = UIColor(named: "TFColor")!
    }
    
    
    init(textField: inout UITextField, View: UIView) {
        super.init(frame: .zero)
        view = View
        setTextField(textField)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
