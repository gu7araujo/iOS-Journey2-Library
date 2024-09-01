//
//  AuthViewModelProtocol.swift
//  Journey2
//
//  Created by Gustavo Araujo Santos on 31/08/24.
//

import Foundation

protocol AuthViewModelProtocol {
    var delegate: AuthViewModelDelegate? { get set }
    func makeLogin()
}
