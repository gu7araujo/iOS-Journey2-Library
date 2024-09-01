//
//  StudentAuthViewFactory.swift
//  Journey2
//
//  Created by Gustavo Araujo Santos on 31/08/24.
//

import Foundation

class StudentAuthViewFactory: AuthViewFactoryProtocol {
    typealias ViewModel = StudentLoginViewModel
    typealias ViewController = StudentLoginViewController

    static func createViewModel() -> StudentLoginViewModel {
        return StudentLoginViewModel()
    }

    static func createViewController(viewModel: StudentLoginViewModel) -> StudentLoginViewController {
        return StudentLoginViewController(viewModel: viewModel)
    }
}
