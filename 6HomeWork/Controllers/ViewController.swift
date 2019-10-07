//
//  ViewController.swift
//  6HomeWork
//
//  Created by Муж on 06/10/2019.
//  Copyright © 2019 true13. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var imageViewLabel: UIImageView!
    @IBOutlet var telephoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - properties
    var name: String?
    var telephone: String!
    var email: String!
    var myImage: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = name
        telephoneLabel.text = "Telehpone number: \(telephone!)"
        emailLabel.text = "Email address: \(email!)"
        imageViewLabel.image = UIImage(named: myImage)
    }
    
   override func viewWillLayoutSubviews() {
    imageViewLabel.layer.cornerRadius = imageViewLabel.frame.width/2.3
    }
    
    // MARK: - IBAction
    @IBAction func BackBarButtonAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}


