//
//  TelaAzulController.swift
//  prova-pratica
//
//  Created by IFB-BIOTIC-07 on 08/12/23.
//

import Foundation
import UIKit

class TelaAzulController: UIViewController {
    var onGreenTap:(() -> Void)?

    
    lazy var azulView: TelaAzulView = {
        let azulView = TelaAzulView()
        
        azulView.onGreenTap = {[weak self] in
            if let self = self {
                self.onGreenTap?()
            }
        }
        

        
        return azulView
    }()
    
    override func loadView() {
        self.view = azulView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        self.title = "Olá"
    }
    

}
