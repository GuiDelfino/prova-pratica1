//
//  TelaAzulCoordinator.swift
//  prova-pratica
//
//  Created by IFB-BIOTIC-07 on 08/12/23.
//

import Foundation
import UIKit

class TelaAzulCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let viewController = TelaAzulController()
        
        
        viewController.onGreenTap = {
            self.gotoTelaVerde()
        }
        

        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func gotoTelaVerde() {
        let coordinator = TelaVerdeCoordinator(navigationController: self.navigationController)
        
        coordinator.start()
    }
    

}
