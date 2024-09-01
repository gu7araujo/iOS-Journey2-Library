//
//  SecondViewModel.swift
//  Journey2
//
//  Created by Gustavo Araujo Santos on 31/08/24.
//

import Foundation

protocol SecondViewModelDelegate: AnyObject {
    func navigateToLogin(type: UserType)
}

class SecondViewModel {
    
    weak var delegate: SecondViewModelDelegate?
    
    deinit {
        print("\(Swift.type(of: self)) deinit")
    }
    
    func navigateToLogin(type: UserType) {
        delegate?.navigateToLogin(type: type)
    }
}
