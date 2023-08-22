//  TravelViewController.swift
//  Neobis_iOS_UIScreens
//  Created by Askar Soronbekov

import Foundation
import UIKit


class TravelViewController : UIViewController {
    
    let titleLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.font = .systemFont(ofSize: 24)
        cLabel.numberOfLines = 0
        cLabel.text = "Путешествуйте \n Почувствуйте прилив энергии"
        cLabel.textAlignment = .center
        
        return cLabel
    }()
    
    let descriptionLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.font = .systemFont(ofSize: 14)
        cLabel.numberOfLines = 0
        cLabel.text = "Мы поможем вам исследовать, сравнить и \n забронировать впечатления - все в одном \n месте."
        cLabel.textAlignment = .center
        
        return cLabel
    }()
    
    let searchBar : UISearchBar = {
        let bar = UISearchBar()
        bar.searchBarStyle = .minimal
        bar.placeholder = "Куда хотите поехать?"
        bar.searchTextField.font = .systemFont(ofSize: 12)
        
        
        return bar
    }()
    
    let contentView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 20
        return view
    }()
    
    let abuImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "AbuDabiPic")
        
        return image
    }()
    
    let sanImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "SanAntonioPic")
        
        return image
    }()
    
    let abuImage2 : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "AbuDabiPic")
        
        return image
    }()
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = true
        
        
        return scrollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        searchBar.sizeToFit()
        
        addToView()
        addConstraints()
    }
    
    func addToView() {
        view.addSubview(titleLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(searchBar)
        scrollView.addSubview(contentView)
        view.addSubview(scrollView)
        contentView.addArrangedSubview(abuImage)
        contentView.addArrangedSubview(sanImage)
        contentView.addArrangedSubview(abuImage2)
    }
    
    func addConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        abuImage.translatesAutoresizingMaskIntoConstraints = false
        abuImage2.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            searchBar.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            searchBar.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 5),
//            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
//            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            scrollView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 20),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: searchBar.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: searchBar.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: searchBar.widthAnchor),
        ])
    }
}
