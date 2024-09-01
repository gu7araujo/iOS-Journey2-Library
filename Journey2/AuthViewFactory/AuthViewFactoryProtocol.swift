//
//  AuthViewFactoryProtocol.swift
//  Journey2
//
//  Created by Gustavo Araujo Santos on 31/08/24.
//

import Foundation

protocol AuthViewFactoryProtocol {
    associatedtype ViewModel: AuthViewModelProtocol
    associatedtype ViewController: AuthViewControllerProtocol

    static func createViewModel() -> ViewModel
    static func createViewController(viewModel: ViewModel) -> ViewController
}
