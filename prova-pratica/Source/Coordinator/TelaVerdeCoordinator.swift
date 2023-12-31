//
//  TelaVerdeCoordinator.swift
//  prova-pratica
//
//  Created by IFB-BIOTIC-07 on 08/12/23.
//

import Foundation
import UIKit

class TelaVerdeCoordinator: Coordinator {
    var navigationController = UINavigationController()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let telaVermelhaCoordinator = TelaVermelhaCoordinator(navigationController: self.navigationController)
        let viewController = TelaVerdeController()
        viewController.onRedTap = {
            telaVermelhaCoordinator.start()
        }
        viewController.onBluetap = {
            self.backToBlueScreen()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    func backToBlueScreen() {
        self.navigationController.popViewController(animated: true)
    }
    
}
