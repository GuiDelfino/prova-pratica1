//
//  TelaVerdeView.swift
//  prova-pratica
//
//  Created by IFB-BIOTIC-07 on 08/12/23.
//

import Foundation
import UIKit

class TelaVermelhaCoordinator: Coordinator {
    var navigationController = UINavigationController()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let telaAzulCoordinator = TelaAzulCoordinator(navigationController: self.navigationController)
        let viewController = TelaVermelhaController()
        viewController.onBlueTap = {
            telaAzulCoordinator.start()
        }
        viewController.onGreenTap = {
            self.backToTelaVerde()
        }
        
        
        self.navigationController.pushViewController(viewController, animated: true)
        
        
    }
    func backToTelaVerde() {
        self.navigationController.popViewController(animated: true)
    }
}
