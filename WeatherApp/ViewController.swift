//
//  ViewController.swift
//  WeatherApp
//
//  Created by Kostya Lee on 28/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var WLabel: UILabel!
    @IBOutlet weak var WIcon: UIImageView!
    @IBOutlet weak var WType: UILabel!
    @IBOutlet weak var WStack: UIStackView!
    @IBOutlet weak var SearchTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SearchTextField(textField: &SearchTF, View: self.view)
        WStack.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: self.view.frame.width * -0.65).isActive = true
        
        let font = UIFont.systemFont(ofSize: self.view.frame.width * 0.09)
        WType.font = font
        
        WIcon.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: self.view.frame.width * -0.9).isActive = true
        WIcon.heightAnchor.constraint(equalTo: self.view.heightAnchor, constant: self.view.frame.width *
            -0.9).isActive = true
        WStack.spacing = self.view.frame.width * -0.4
        
        WLabel.translatesAutoresizingMaskIntoConstraints = false
        WLabel.font = UIFont.systemFont(ofSize: self.view.frame.width * 0.3, weight: .light)
        
        
        WLabel.leadingAnchor.constraint(equalTo: WStack.leadingAnchor, constant: self.view.frame.width * -0.04).isActive = true
        WLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: self.view.frame.height * -0.51).isActive = true
        
    }

    

}

