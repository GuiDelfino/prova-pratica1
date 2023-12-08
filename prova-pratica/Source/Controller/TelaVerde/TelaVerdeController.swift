//
//  TelaVerdeController.swift
//  prova-pratica
//
//  Created by IFB-BIOTIC-07 on 08/12/23.
//

import Foundation
import UIKit

class TelaVerdeController: UIViewController {
    
    var onBlueTap:(() -> Void)?
    var onRedTap: (() -> Void)?
    
    lazy var telaVerde: TelaVerdeView = {
        let telaVerde = TelaVerdeView()
        
        telaVerde.onBlueTap = {[weak self] in
            if let self = self {
                self.onBlueTap?()
            }
        }
        
        telaVerde.onRedTap = {[weak self] in
            if let self = self {
                self.onRedTap?()
            }
        }
        
        return telaVerde
    }()
    
    override func loadView() {
        self.view = telaVerde
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        self.title = "Entrar"
    }
    
    
}
