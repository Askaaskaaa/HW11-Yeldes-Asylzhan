//
//  ViewController.swift
//  Yeldes Asylzhan-HW11
//  Created by Asylzhan Yeldes on 15.06.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        return imageView
    }()

    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = .white
        return label
    }()

    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.setLeftIcon(UIImage(named: "ava")!)
        textField.setRightIcon(UIImage(named: "Group")!)
        textField.layer.cornerRadius = 20
        textField.backgroundColor = .white
        return textField
    }()

    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.setLeftIcon(UIImage(named: "password")!)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        return textField
    }()

    private lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.42, green: 0.45, blue: 0.81, alpha: 1.00)
        button.clipsToBounds = true
        button.layer.cornerRadius = 18
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()

    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot your password?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        return button
    }()

    private lazy var orConnectWithLabel: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()

    private lazy var lineViewOne: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.94, green: 0.95, blue: 0.96, alpha: 1.00)
        view.layer.cornerRadius = 2
        return view
    }()

    private lazy var lineViewTwo: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.94, green: 0.95, blue: 0.96, alpha: 1.00)
        view.layer.cornerRadius = 2
        return view
    }()

    private lazy var facebookButton: UIButton = {
        let button = UIButton()
        button.setTitle("Facebook", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setImage(UIImage(named: "facebookLogo"), for: .normal)
        button.configuration = .filled()
        button.configuration?.baseBackgroundColor = UIColor(red: 0.21, green: 0.65, blue: 0.94, alpha: 1.00)
        button.configuration?.imagePadding = 10
        button.clipsToBounds = true
        button.layer.cornerRadius = 18
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()

    private lazy var twitterButton: UIButton = {
        let button = UIButton()
        button.setTitle("Twitter", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setImage(UIImage(named: "twitterLogo"), for: .normal)
        button.configuration = .filled()
        button.configuration?.baseBackgroundColor = UIColor(red: 0.31, green: 0.45, blue: 0.71, alpha: 1.00)
        button.configuration?.imagePadding = 10
        button.clipsToBounds = true
        button.layer.cornerRadius = 18
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()

    private lazy var noAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't have account?"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()

    private lazy var signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(.systemIndigo, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        return button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }


    private func setupViews() {
        let subviews = [backgroundImageView, loginLabel, emailTextField, passwordTextField, loginButton, forgotPasswordButton, orConnectWithLabel, lineViewOne, lineViewTwo, facebookButton, twitterButton, noAccountLabel, signUpButton]
        subviews.forEach { element in
            view.addSubview(element)
        }
    }

    private func setupConstraints() {

        backgroundImageView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            let height = UIScreen.main.bounds.height
            make.height.equalTo(height * 0.63)
        }

        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(140)
            make.centerX.equalToSuperview()
        }

        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(37)
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-50)
            make.height.equalTo(40)
        }

        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(18)
            make.leading.trailing.height.equalTo(emailTextField)
        }

        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(48)
            make.leading.trailing.equalTo(emailTextField)
            make.height.equalTo(35)
        }

        forgotPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(24)
            make.centerX.equalToSuperview()
        }

        orConnectWithLabel.snp.makeConstraints { make in
            make.top.equalTo(forgotPasswordButton.snp.bottom).offset(183)
            make.centerX.equalToSuperview()
        }

        lineViewOne.snp.makeConstraints { make in
            make.centerY.equalTo(orConnectWithLabel.snp.centerY)
            make.trailing.equalTo(orConnectWithLabel.snp.leading).offset(-15)
            make.height.equalTo(1)
            make.width.equalTo(60)
        }

        lineViewTwo.snp.makeConstraints { make in
            make.centerY.equalTo(orConnectWithLabel.snp.centerY)
            make.leading.equalTo(orConnectWithLabel.snp.trailing).offset(15)
            make.height.equalTo(1)
            make.width.equalTo(50)
        }

        facebookButton.snp.makeConstraints { make in
            make.top.equalTo(orConnectWithLabel.snp.bottom).offset(25)
            make.leading.equalToSuperview().offset(27)
            make.height.equalTo(35)
            make.width.equalTo(150)
        }

        twitterButton.snp.makeConstraints { make in
            make.top.equalTo(orConnectWithLabel.snp.bottom).offset(25)
            make.trailing.equalToSuperview().offset(-27)
            make.height.equalTo(35)
            make.width.equalTo(150)
        }

        noAccountLabel.snp.makeConstraints { make in
            make.top.equalTo(view.snp.bottom).offset(-100)
            make.leading.equalToSuperview().offset(112)
        }

        signUpButton.snp.makeConstraints { make in
            make.leading.equalTo(noAccountLabel.snp.trailing).offset(12)
            make.height.equalTo(14)
            make.top.equalTo(view.snp.bottom).offset(-100)

        }
    }
}

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 25, y: 6, width: 15, height: 15))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 30, y: 0, width: 55, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }

    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 5, y: 8, width: 15, height: 15))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 45, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }

    func setPadding(left: CGFloat, right: CGFloat? = nil) {
            setLeftPadding(left)
            if let rightPadding = right {
                setRightPadding(rightPadding)
            }
    }

    func setLeftPadding(_ padding: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: self.frame.size.height))
            self.leftView = paddingView
            self.leftViewMode = .always
    }

    func setRightPadding(_ padding: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: self.frame.size.height))
            self.rightView = paddingView
            self.rightViewMode = .always
    }
}


