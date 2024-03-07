import UIKit

class ViewController: UIViewController {
    // Data for the sections and notifications
    let sections = ["Today", "Yesterday", "Last 7 days", "Older Notifications"]
    let notifications = [
        ["Gave you super badge!", "Gave you super badge!","Joined Your Chamber"],
        ["Gave you super badge!", "Gave you super badge!"],
        ["Gave you super badge!", "It’s been a while since you joined any chamber.", "Joined Your Chamber"],
        ["Gave you super badge!"]
    ]
    
    // Table view to display notifications
    let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up the top notification bar
        let topNotificationBar = UIView()
        topNotificationBar.backgroundColor = .white // Set the color according to your design
        topNotificationBar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(topNotificationBar)
        
        NSLayoutConstraint.activate([
            topNotificationBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topNotificationBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topNotificationBar.topAnchor.constraint(equalTo: view.topAnchor),
            topNotificationBar.heightAnchor.constraint(equalToConstant: 80) // Adjust height as needed
        ])
        
        // Add "Notification" title label
        let titleLabel = UILabel()
        titleLabel.text = "Notifications"
        titleLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold) // Adjust font size and weight
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        topNotificationBar.addSubview(titleLabel)
        
        // Add back button
        let backButton = UIImageView(image: UIImage(named: "back"))
        backButton.translatesAutoresizingMaskIntoConstraints = false
        topNotificationBar.addSubview(backButton)
        
        // Add settings button
        let settingsButton = UIImageView(image: UIImage(named: "settings"))
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        topNotificationBar.addSubview(settingsButton)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: topNotificationBar.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: topNotificationBar.centerYAnchor),
            
            backButton.leadingAnchor.constraint(equalTo: topNotificationBar.leadingAnchor, constant: 16),
            backButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            
            settingsButton.trailingAnchor.constraint(equalTo: topNotificationBar.trailingAnchor, constant: -16),
            settingsButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor)
        ])
        
        // Set up the table view
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: topNotificationBar.bottomAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        tableView.dataSource = self
        tableView.delegate = self
        
        // Register custom cell classes
        tableView.register(UserNotificationTableViewCell.self, forCellReuseIdentifier: "UserNotificationCell")
        tableView.register(SystemNotificationTableViewCell.self, forCellReuseIdentifier: "SystemNotificationCell")
    }
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notifications[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create and configure the appropriate cell based on the section
        if indexPath.section == 2 && indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SystemNotificationCell", for: indexPath) as! SystemNotificationTableViewCell
            cell.configure(message: notifications[indexPath.section][indexPath.row], isSystemNotification: true)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "UserNotificationCell", for: indexPath) as! UserNotificationTableViewCell
            let userName: String
            if indexPath.section == 0 {
                userName = indexPath.row == 0 ? "Iram" : "Cindy"
            } else {
                userName = indexPath.section == 1 ? "Jack" : "John"
            }
            cell.configure(userName: userName, message: notifications[indexPath.section][indexPath.row])
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
// Custom UITableViewCell for User Notification
class UserNotificationTableViewCell: UITableViewCell {
    let userImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    func configure(userName: String, message: String) {
        userImageView.image = UIImage(named: userName.lowercased())
        contentView.addSubview(userImageView)
        
        NSLayoutConstraint.activate([
            userImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            userImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            userImageView.widthAnchor.constraint(equalToConstant: 40),
            userImageView.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        let nameLabel = UILabel()
        nameLabel.text = userName
        nameLabel.font = UIFont.boldSystemFont(ofSize: 16)
        nameLabel.numberOfLines = 0
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(nameLabel)
        
        let messageLabel = UILabel()
        messageLabel.text = message
        messageLabel.numberOfLines = 0
        messageLabel.font = UIFont.systemFont(ofSize: 16)
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(messageLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: userImageView.trailingAnchor, constant: 8),
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            
            messageLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            messageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            messageLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            messageLabel.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -8)
        ])
    }
}

// Custom UITableViewCell for System Notification
class SystemNotificationTableViewCell: UITableViewCell {
    let systemImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    func configure(message: String, isSystemNotification: Bool) {
        if isSystemNotification {
            systemImageView.image = UIImage(named: "logo")
            contentView.addSubview(systemImageView)
            
            NSLayoutConstraint.activate([
                systemImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
                systemImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
                systemImageView.widthAnchor.constraint(equalToConstant: 40),
                systemImageView.heightAnchor.constraint(equalToConstant: 40)
            ])
            
            let messageLabel = UILabel()
            messageLabel.text = message
            messageLabel.numberOfLines = 0
            messageLabel.font = UIFont.systemFont(ofSize: 16)
            messageLabel.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(messageLabel)
            
            NSLayoutConstraint.activate([
                messageLabel.leadingAnchor.constraint(equalTo: systemImageView.trailingAnchor, constant: 8),
                messageLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
                messageLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
                messageLabel.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -8)
            ])
        } else {
            textLabel?.text = message
            textLabel?.numberOfLines = 0
            textLabel?.font = UIFont.systemFont(ofSize: 16)
        }
    }
}

#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        ViewController().showPreview()
    }
}
#endif
