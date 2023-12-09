//
//  TelaAzulView.swift
//  prova-pratica
//
//  Created by IFB-BIOTIC-07 on 08/12/23.
//

import Foundation
import UIKit

class TelaAzulView: UIView {
    
    
    override init(frame: CGRect) {
        super.init(frame: CGRectZero)
        self.backgroundColor = .blue
        setUpVisualElements()
    }
    
    
    var greenButton: UIButton = {
        let button = UIButton()
        button.setTitle("Tela Verde", for: .normal)
        button.setTitleColor(.systemGreen, for: .normal)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    func setUpVisualElements() {

        addSubview(greenButton)
 
        
        NSLayoutConstraint.activate([
            
            greenButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 250),
            greenButton.widthAnchor.constraint(equalToConstant: 275),
            greenButton.heightAnchor.constraint(equalToConstant: 60),
            greenButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            greenButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    
}
