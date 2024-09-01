//
//  AuthViewControllerProtocol.swift
//  Journey2
//
//  Created by Gustavo Araujo Santos on 31/08/24.
//

import Foundation
import UIKit

protocol AuthViewControllerProtocol: UIViewController {
    var titleLabel: UILabel { get }
    var emailField: UITextField { get }
    var passwordField: UITextField { get }
}
