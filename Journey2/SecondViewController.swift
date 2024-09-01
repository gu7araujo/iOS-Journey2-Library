//
//  SecondViewController.swift
//  Journey2
//
//  Created by Gustavo Araujo Santos on 24/06/24.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    let viewModel: SecondViewModel
    
    let studentButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Student login", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.blue, for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let teacherButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Teacher login", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.blue, for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    init(viewModel: SecondViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("\(Swift.type(of: self)) deinit")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        view.addSubview(studentButton)
        view.addSubview(teacherButton)
        
        studentButton.addTarget(self, action: #selector(studentButtonTapped), for: .touchUpInside)
        teacherButton.addTarget(self, action: #selector(teacherButtonTapped), for: .touchUpInside)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            studentButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            studentButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
            studentButton.widthAnchor.constraint(equalToConstant: 250),
            studentButton.heightAnchor.constraint(equalToConstant: 50),
            
            teacherButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            teacherButton.topAnchor.constraint(equalTo: studentButton.bottomAnchor, constant: 20),
            teacherButton.widthAnchor.constraint(equalToConstant: 250),
            teacherButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func studentButtonTapped() {
        viewModel.navigateToLogin(type: .student)
    }
    
    @objc func teacherButtonTapped() {
        viewModel.navigateToLogin(type: .teacher)
    }
}
