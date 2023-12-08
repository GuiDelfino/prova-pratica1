//
//  ButtonDefault.swift
//  prova-pratica
//
//  Created by IFB-BIOTIC-07 on 08/12/23.
//

import Foundation
import UIKit

class ButtonDefault: UIButton {
    
    init(title:String) {
        super.init(frame: .zero)
        buttonDesign(title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func buttonDesign(title: String) {
        self.setTitle(title, for: .normal)
        self.backgroundColor = .white
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 1
        self.translatesAutoresizingMaskIntoConstraints = false
            
        }
    }
