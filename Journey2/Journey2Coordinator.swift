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
    public var parentCoordinator: (any CoordinatorProtocol)?
    public var type: CoordinatorType = .journey2
    
    public required init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        print("\(Swift.type(of: self)) deinit")
    }
    
    public func start() {
        let viewModel = SecondViewModel()
        viewModel.delegate = self
        let viewController = SecondViewController(viewModel: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
}

extension Journey2Coordinator: SecondViewModelDelegate {
    func navigateToLogin(type: UserType) {
        switch type {
        case .student:
            let viewModel = StudentAuthViewFactory.createViewModel()
            let viewController = StudentAuthViewFactory.createViewController(viewModel: viewModel)
            viewModel.delegate = self
            showAuthViewController(viewController)
        case .teacher:
            let viewModel = TeacherAuthViewFactory.createViewModel()
            let viewController = TeacherAuthViewFactory.createViewController(viewModel: viewModel)
            viewModel.delegate = self
            showAuthViewController(viewController)
        }
    }
    
    private func showAuthViewController(_ viewController: UIViewController) {
        viewController.hidesBottomBarWhenPushed = true
        navigationController.setNavigationBarHidden(false, animated: true)
        navigationController.pushViewController(viewController, animated: true)
    }
}

extension Journey2Coordinator: AuthViewModelDelegate {
    func navigateToSuccess() {
        let viewModel = LoginSuccessViewModel()
        viewModel.delegate = self
        let viewController = LoginSuccessViewController(viewModel: viewModel)
        
        navigationController.setNavigationBarHidden(true, animated: true)
        navigationController.pushViewController(viewController, animated: true)
    }
}

extension Journey2Coordinator: LoginSuccessViewModelDelegate {
    func navigateToInitial() {
        popToSpecificViewController(ofType: SecondViewController.self, animated: true)
    }
}
