//
//  model.swift
//  6HomeWork
//
//  Created by Муж on 06/10/2019.
//  Copyright © 2019 true13. All rights reserved.
//

import Foundation

struct Person {
    var name: String?
    var surname: String?
    var telephoneNumber: String?
    var emailAddress: String?
    var photo: String?
    
    init() {

    }
    
    init(name: String, surname: String,telephoneNumber: String, emailAddress: String, photo: String) {
        self.name = name
        self.surname = surname
        self.telephoneNumber = telephoneNumber
        self.emailAddress = emailAddress
        self.photo = photo
    }
}

var name = ["Ivan", "Mark", "John"]
var surname = ["Levin", "Smith", "Lo"]
var telephoneNumber = ["+79435678436", "+125640304205", "+35674895609305"]
var emailAddress = ["cat137890@gmail.com", "workhome13@yandex.ru", "fanatsailormoon@gmail.com"]
var photo = ["photo1", "photo2", "photo3"]
   

