//
//  TelaVerdeCoordinator.swift
//  prova-pratica
//
//  Created by IFB-BIOTIC-07 on 08/12/23.
//

import Foundation
import UIKit

class TelaVerdeCoordinator: Coordinator {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = TelaVerdeController()
        
        viewController.onBlueTap = {
            self.onBlueTap()
        }
        

        }
        

    
    private func onBlueTap() {
        self.navigationController.popViewController(animated: true)
//        let coordinator = LoginCoordinator(navigationController: self.navigationController)
//
//        coordinator.start()
    }
    
}
