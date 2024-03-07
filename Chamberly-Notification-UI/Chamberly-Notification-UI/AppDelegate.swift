//
//  AppDelegate.swift
//  Chamberly-Notification-UI
//
//  Created by Taranjeet Singh Bedi on 07/03/24.
//

import UIKit

class UserNotificationView: UIView {
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let messageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    let userImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var viewed: Bool = false {
        didSet {
            messageLabel.font = viewed ? UIFont.systemFont(ofSize: 14) : UIFont.boldSystemFont(ofSize: 14)
        }
    }
    
    init(name: String, message: String, imageName: String) {
        super.init(frame: .zero)
        
        nameLabel.text = name
        messageLabel.text = message
        userImageView.image = UIImage(named: imageName)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(userImageView)
        addSubview(nameLabel)
        addSubview(messageLabel)
        
        userImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            userImageView.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            userImageView.widthAnchor.constraint(equalToConstant: 40),
            userImageView.heightAnchor.constraint(equalToConstant: 40),
            
            nameLabel.leadingAnchor.constraint(equalTo: userImageView.trailingAnchor, constant: 8),
            nameLabel.topAnchor.constraint(equalTo: userImageView.topAnchor),
            
            messageLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            messageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            messageLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }
}

class SystemNotificationView: UIView {
    let messageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.numberOfLines = 0
        return label
    }()
    
    let systemImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "logo")
        return imageView
    }()
    
    init(message: String) {
        super.init(frame: .zero)
        
        messageLabel.text = message
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(systemImageView)
        addSubview(messageLabel)
        
        systemImageView.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            systemImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            systemImageView.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            systemImageView.widthAnchor.constraint(equalToConstant: 40),
            systemImageView.heightAnchor.constraint(equalToConstant: 40),
            
            messageLabel.leadingAnchor.constraint(equalTo: systemImageView.trailingAnchor, constant: 8),
            messageLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            messageLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }
}


@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = ViewController()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        return true
    }
}

