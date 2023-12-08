//
//  TelaVerdeView.swift
//  prova-pratica
//
//  Created by IFB-BIOTIC-07 on 08/12/23.
//

import Foundation
import UIKit

class TelaVerdeView: UIView {
    var onBlueTap:(() -> Void)?
    var onRedTap: (() -> Void)?
    
    
    lazy var buttonBlue: ButtonDefault = {
        let button = ButtonDefault(title: "Voltar para a tela azul")
        
        button.addTarget(self, action: #selector(self.blueTap), for: .touchUpInside)

        return button
    }()
    
    lazy var buttonRed: ButtonDefault = {
        let button = ButtonDefault(title: "Ir para a tela Vermelha")
        
        button.addTarget(self, action: #selector(self.redTap), for: .touchUpInside)

        return button
    }()
    
    func addConstraints1() {
        buttonBlue.widthAnchor.constraint(equalToConstant: 250).isActive = true
        buttonBlue.heightAnchor.constraint(equalToConstant: 40).isActive = true
        buttonRed.widthAnchor.constraint(equalToConstant: 250).isActive = true
        buttonRed.heightAnchor.constraint(equalToConstant: 40).isActive = true
        buttonBlue.topAnchor.constraint(equalTo: self.topAnchor, constant: 228).isActive = true
        buttonBlue.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57).isActive = true
        buttonRed.topAnchor.constraint(equalTo: buttonBlue.bottomAnchor, constant: 25).isActive = true
        buttonRed.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57).isActive = true
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: CGRectZero)
        addSubview(buttonRed)
        addSubview(buttonBlue)
        addConstraints1()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    

    @objc
    private func blueTap() {
        onBlueTap?()
    }
    

    @objc
    private func redTap() {
        onRedTap?()
    }
    





    
}
