//
//  TelaVerdeController.swift
//  prova-pratica
//
//  Created by IFB-BIOTIC-07 on 08/12/23.
//

import Foundation
import UIKit

class TelaVerdeController: UIViewController {
    
    var onBluetap: (() -> Void)?
    var onRedTap: (() -> Void)?
    
    let telaVerde = TelaVerdeView()
    
    override func loadView() {
        view = telaVerde
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .green
        super.viewDidLoad()
        telaVerde.redButton.addTarget(self, action: #selector(telaVermelha), for: .touchUpInside)
        telaVerde.blueButton.addTarget(self, action: #selector(telaAzul), for: .touchUpInside)

    }
    
    @objc private func telaVermelha() {
        onRedTap?()
    }
    
    @objc private func telaAzul() {
        onBluetap?()
    }
}
