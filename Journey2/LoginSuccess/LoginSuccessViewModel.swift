//
//  LoginSuccessViewModel.swift
//  Journey2
//
//  Created by Gustavo Araujo Santos on 31/08/24.
//

import Foundation

protocol LoginSuccessViewModelDelegate: AnyObject {
    func navigateToInitial()
}

class LoginSuccessViewModel {
    
    weak var delegate: LoginSuccessViewModelDelegate?
    
    deinit {
        print("\(Swift.type(of: self)) deinit")
    }
    
    func navigateToInitial() {
        delegate?.navigateToInitial()
    }
}
