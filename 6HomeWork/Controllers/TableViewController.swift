//
//  TableViewController.swift
//  6HomeWork
//
//  Created by Муж on 06/10/2019.
//  Copyright © 2019 true13. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // MARK: properties
    var person1 = Person()
    var person2 = Person()
    var person3 = Person()
    var array: [Person] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        person1 = setPerson()
        person2 = setPerson()
        person3 = setPerson()
        array = [person1, person2, person3]
    
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
   // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell
        let memberOfArray = array[indexPath.row]
        
        cell?.nameCellLabel.text = "\(memberOfArray.name!) \(memberOfArray.surname!)"
        cell?.emailCellLabel.text = memberOfArray.emailAddress
        cell?.telephoneSellLabel.text = memberOfArray.telephoneNumber
        cell?.imageViewCellLabel.image = UIImage(named: memberOfArray.photo!)

        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
         if segue.identifier == "segueToFinishController" {
            
            if let indexPath = self.tableView.indexPathForSelectedRow{
                
                let destinationVC = segue.destination as! ViewController
                let memberOfArray = array[indexPath.row]

                destinationVC.name = "\(memberOfArray.name!) \(memberOfArray.surname!)"
                destinationVC.email = memberOfArray.emailAddress
                destinationVC.telephone = memberOfArray.telephoneNumber
                destinationVC.myImage = memberOfArray.photo
            }
        }
    }
}

// MARK: - extention
extension TableViewController{
    
    private func setPerson () -> Person{
        
        var person:Person
        
        if name.count != 1 {
            var random = Int.random(in: 0..<name.count)
            let nameForPerson = name[random]
            name.remove(at: random)
            
            random = Int.random(in: 0..<name.count)
            let surnameForPerson = surname[random]
            surname.remove(at: random)
            
            random = Int.random(in: 0..<name.count)
            let telephoneNumberForPerson = telephoneNumber[random]
            telephoneNumber.remove(at: random)
            
            random = Int.random(in: 0..<name.count)
            let emailAddressForPerson = emailAddress[random]
            emailAddress.remove(at: random)
            
            random = Int.random(in: 0..<name.count)
            let photoForPerson = photo[random]
            photo.remove(at: random)
            
            
            person = Person(name: nameForPerson,
                            surname: surnameForPerson,
                            telephoneNumber: telephoneNumberForPerson,
                            emailAddress: emailAddressForPerson,
                            photo: photoForPerson)
        } else {
            person = Person(name: name[0],
            surname: surname[0],
            telephoneNumber: telephoneNumber[0],
            emailAddress: emailAddress[0],
            photo: photo[0])
        }
        print(person)
            return  person
    }
}
