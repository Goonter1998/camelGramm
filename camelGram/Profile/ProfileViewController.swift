//
//  ProfileViewController.swift
//  camelGram
//
//  Created by user on 20.11.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let avatarImage = makeAvatarImage()
        let userName = makeUserName()
        let nickName = makeNickName()
        let profileDescription = makeProfileDescription()
        let logoutButton = makeLogoutButton()
        
        NSLayoutConstraint.activate([
            avatarImage.heightAnchor.constraint(equalToConstant: 70),
            avatarImage.widthAnchor.constraint(equalToConstant: 70),
            avatarImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 76),
            avatarImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            userName.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 8),
            userName.leadingAnchor.constraint(equalTo: avatarImage.leadingAnchor),
            nickName.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 8),
            nickName.leadingAnchor.constraint(equalTo: avatarImage.leadingAnchor),
            profileDescription.topAnchor.constraint(equalTo: nickName.bottomAnchor, constant: 8),
            profileDescription.leadingAnchor.constraint(equalTo: avatarImage.leadingAnchor),
            logoutButton.heightAnchor.constraint(equalToConstant: 44),
            logoutButton.widthAnchor.constraint(equalToConstant: 44),
            logoutButton.centerYAnchor.constraint(equalTo: avatarImage.centerYAnchor),
            logoutButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24)
        ])
    }
    
    func makeAvatarImage() -> UIImageView { // добавляю аватарку
        let avatarImage = UIImageView(image: UIImage(named: "avatar_image"))
        view.addSubview(avatarImage)
        avatarImage.translatesAutoresizingMaskIntoConstraints = false
        
        return avatarImage
    }
    
    func makeUserName() -> UILabel { // добавляю имя юзера
        let userName = UILabel()
        view.addSubview(userName)
        userName.translatesAutoresizingMaskIntoConstraints = false
        userName.text = "Екатерина Новикова"
        userName.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        userName.textColor = .ypWhite
        
        return userName
    }
    
    func makeNickName() -> UILabel { // добавляю никнейм
        let nickName = UILabel()
        view.addSubview(nickName)
        nickName.translatesAutoresizingMaskIntoConstraints = false
        nickName.text = "@ekaterina_nov"
        nickName.textColor = .ypGray
        nickName.font = UIFont.systemFont(ofSize: 13)
        
        return nickName
    }
    
    func makeProfileDescription() -> UILabel { // добавляю описание профиля
        let profileDescription = UILabel()
        view.addSubview(profileDescription)
        profileDescription.translatesAutoresizingMaskIntoConstraints = false
        profileDescription.text = "Hello, World!"
        profileDescription.textColor = .ypWhite
        profileDescription.font = UIFont.systemFont(ofSize: 13)
        
        return profileDescription
    }
    
    func makeLogoutButton() -> UIButton { // добавляю кнопку логаута
        let logoutButton = UIButton()
        view.addSubview(logoutButton)
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        logoutButton.setImage(UIImage(named: "logout_button"), for: .normal)
        
        return logoutButton
    }
}
