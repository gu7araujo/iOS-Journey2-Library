//
//  StudentLoginViewModel.swift
//  Journey2
//
//  Created by Gustavo Araujo Santos on 31/08/24.
//

import Foundation

class StudentLoginViewModel: AuthViewModelProtocol {
    
    weak var delegate: AuthViewModelDelegate?
    
    deinit {
        print("\(Swift.type(of: self)) deinit")
    }
    
    func makeLogin() {
        var user = UserBuilder()
            .set(id: UUID().uuidString)
            .set(name: "Name")
            .set(lastName: "Name")
            .set(age: 15)
            .set(type: .student)
            .build()
        
        delegate?.navigateToSuccess()
    }
}