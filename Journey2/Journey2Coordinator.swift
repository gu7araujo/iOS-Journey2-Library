//
//  Journey2Coordinator.swift
//  Journey2
//
//  Created by Gustavo Araujo Santos on 24/06/24.
//

import Foundation
import UIKit
import Core

public class Journey2Coordinator: CoordinatorProtocol {
    
    public weak var finishDelegate: (any CoordinatorFinishDelegate)?
    public var navigationController: UINavigationController
    public var childCoordinators: [any CoordinatorProtocol] = []
    public var childControllers: [UIViewController] = []
    public var parentCoordinator: (any CoordinatorProtocol)?
    public var type: CoordinatorType = .journey2
    
    public required init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        print("\(Journey2Coordinator.self) deinit")
    }
    
    public func start() {
        let viewController = SecondViewController()
        navigationController.pushViewController(viewController, animated: true)
        childControllers.append(viewController)
    }
}
