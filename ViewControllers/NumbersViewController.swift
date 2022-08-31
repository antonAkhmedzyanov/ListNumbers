//
//  NumbersViewController.swift
//  ListNumbers
//
//  Created by Anton Akhmedzyanov on 31.08.2022.
//

import UIKit

class NumbersViewController: UITableViewController {

    //MARK: - Private properties
       
        private var mainPerson = Person.getPerson()
       
        
        override func viewDidLoad() {
            super.viewDidLoad()

            
        }

        // MARK: - Table view data source
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            mainPerson.count
        }

        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "numbers", for: indexPath)
            let infoPerson = mainPerson[indexPath.row]
            
            
            var content = cell.defaultContentConfiguration()
            content.text = infoPerson.fullname
            cell.contentConfiguration = content
            
            return cell
        }
        //MARK: - Navigation
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let detailVC = segue.destination as? DetailViewController else { return }
         
            guard let index = tableView.indexPathForSelectedRow else { return }
            
            let person = mainPerson[index.row]
            detailVC.person = person
        }
    }
