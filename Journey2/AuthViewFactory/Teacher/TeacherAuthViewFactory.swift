//
//  TeacherAuthViewFactory.swift
//  Journey2
//
//  Created by Gustavo Araujo Santos on 31/08/24.
//

import Foundation

class TeacherAuthViewFactory: AuthViewFactoryProtocol {
    typealias ViewModel = TeacherLoginViewModel
    typealias ViewController = TeacherLoginViewController

    static func createViewModel() -> TeacherLoginViewModel {
        return TeacherLoginViewModel()
    }

    static func createViewController(viewModel: TeacherLoginViewModel) -> TeacherLoginViewController {
        return TeacherLoginViewController(viewModel: viewModel)
    }
}
