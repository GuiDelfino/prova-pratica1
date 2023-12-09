//
//  TelaAzulController.swift
//  prova-pratica
//
//  Created by IFB-BIOTIC-07 on 08/12/23.
//

import UIKit

class TelaVermelhaController: UIViewController {
    var onBlueTap:(() -> Void)?
    var onGreenTap:(() -> Void)?
    
    let telaVermelhaView = TelaVermelhaView()

    override func loadView() {
        view = telaVermelhaView
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .green
        super.viewDidLoad()
        telaVermelhaView.blueButton.addTarget(self, action: #selector(blueScreen), for: .touchUpInside)
        telaVermelhaView.greenButton.addTarget(self, action: #selector(greenScreen), for: .touchUpInside)
    }
    
    @objc private func blueScreen() {
        onBlueTap?()
    }
    
    @objc private func greenScreen() {
        onGreenTap?()
    }
    

}
