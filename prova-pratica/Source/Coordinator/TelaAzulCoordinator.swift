//
//  TelaAzulCoordinator.swift
//  prova-pratica
//
//  Created by IFB-BIOTIC-07 on 08/12/23.
//

import Foundation
import UIKit

class TelaAzulCoordinator: Coordinator {

    var navigationController = UINavigationController()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let telaVerdeCoordinator = TelaVerdeCoordinator(navigationController: self.navigationController)
        let viewController = TelaAzulController()
        viewController.onGreenTap = {
            telaVerdeCoordinator.start()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }    
    
}
