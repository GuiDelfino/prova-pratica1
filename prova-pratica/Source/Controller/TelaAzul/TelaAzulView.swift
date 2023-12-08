//
//  TelaAzulView.swift
//  prova-pratica
//
//  Created by IFB-BIOTIC-07 on 08/12/23.
//

import Foundation
import UIKit

class TelaAzulView: UIView {
    var onGreenTap:(() -> Void)?
    
    
    lazy var button: ButtonDefault = {
        let button = ButtonDefault(title: "Ir para a tela verde")
        button.title(for: .normal)
        button.addTarget(self, action: #selector(self.greenTap), for: .touchUpInside)

        return button
    }()
    
    func addConstraints() {
        
        
        button.widthAnchor.constraint(equalToConstant: 250).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.topAnchor.constraint(equalTo: self.topAnchor, constant: 228).isActive = true
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57).isActive = true
    }
    

    

    @objc
    private func greenTap() {
        onGreenTap?()
    }
    
    override init(frame: CGRect) {
        super.init(frame: CGRectZero)
        addSubview(button)
        addConstraints()
        

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    





    
}
