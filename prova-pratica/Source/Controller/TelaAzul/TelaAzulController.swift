//
//  TelaAzulController.swift
//  prova-pratica
//
//  Created by IFB-BIOTIC-07 on 08/12/23.
//

import UIKit

class TelaAzulController: UIViewController {
    var onGreenTap:(() -> Void)?

    let telaAzulView = TelaAzulView()
    
    
    override func loadView() {
        view = telaAzulView
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .blue
        super.viewDidLoad()
        telaAzulView.greenButton.addTarget(self, action: #selector(telaVerde), for: .touchUpInside)
    }
    
    @objc private func telaVerde() {
        onGreenTap?()
    }
    

}
