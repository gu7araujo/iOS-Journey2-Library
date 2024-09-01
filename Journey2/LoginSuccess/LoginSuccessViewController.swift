//
//  LoginSuccessViewController.swift
//  Journey2
//
//  Created by Gustavo Araujo Santos on 31/08/24.
//

import UIKit

class LoginSuccessViewController: UIViewController {
    
    let viewModel: LoginSuccessViewModel

    let successLabel: UILabel = {
        let label = UILabel()
        label.text = "Login Successful!"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let backButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Back", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    init(viewModel: LoginSuccessViewModel) {
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
        view.backgroundColor = .white
        
        view.addSubview(successLabel)
        view.addSubview(backButton)
        
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
        setupConstraints()
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            successLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            successLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),

            backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backButton.topAnchor.constraint(equalTo: successLabel.bottomAnchor, constant: 40),
            backButton.widthAnchor.constraint(equalToConstant: 250),
            backButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    @objc func backButtonTapped() {
        viewModel.navigateToInitial()
    }
}
