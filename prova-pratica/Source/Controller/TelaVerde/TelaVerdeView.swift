//
//  TelaVerdeView.swift
//  prova-pratica
//
//  Created by IFB-BIOTIC-07 on 08/12/23.
//

import Foundation
import UIKit

class TelaVerdeView: UIView {

    override init(frame: CGRect) {
        super.init(frame: CGRectZero)
        self.backgroundColor = .green
        setUpVisualElements()
    }
    
    var blueButton: UIButton = {
        let button = UIButton()
        button.setTitle("Tela Azul", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    var redButton: UIButton = {
        let button = UIButton()
        button.setTitle("Tela Vermelha", for: .normal)
        button.setTitleColor(.systemRed, for: .normal)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    

    
    func setUpVisualElements() {

        addSubview(blueButton)
        addSubview(redButton)

        
        NSLayoutConstraint.activate([
            

            
            blueButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 250),
            blueButton.widthAnchor.constraint(equalToConstant: 275),
            blueButton.heightAnchor.constraint(equalToConstant: 60),
            blueButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            blueButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
            redButton.topAnchor.constraint(equalTo: blueButton.bottomAnchor, constant: 10),
            redButton.widthAnchor.constraint(equalToConstant: 275),
            redButton.heightAnchor.constraint(equalToConstant: 60),
            redButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            redButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    




    
}
