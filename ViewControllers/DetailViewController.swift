//
//  DetailViewController.swift
//  ListNumbers
//
//  Created by Anton Akhmedzyanov on 31.08.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = person.phone
        emailLabel.text = person.email
        title = person.fullname
    }

}
