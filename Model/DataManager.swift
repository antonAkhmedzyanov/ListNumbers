//
//  DataManager.swift
//  ListNumbers
//
//  Created by Anton Akhmedzyanov on 31.08.2022.
//

class DataManager {
    var names: [String] = [ "Alex", "Bil", "Jonh", "Lucy",
                            "Sam", "Mike", "Rick", "Bob"].shuffled()
    
    var surnames: [String] = ["Williams", "Davidson", "Smith", "Dow",
                              "Murphy", "Taylor", "Buttler", "Robertson"].shuffled()
    
    var emails: [String] = ["as@gmail.com", "fer@gmail.com", "qwe4@gmail.com", "jeil@yahoo.com",
                            "tayl@mail.ru", "erer@mail.ru", "das@gmail.com", "yuyu@gmail.com" ].shuffled()
    
    var phonenumbers: [String] = ["7766194", "3456732", "5678908", "3405566",
                                  "1204544", "1007070", "9002020", "2005642"].shuffled()
}

