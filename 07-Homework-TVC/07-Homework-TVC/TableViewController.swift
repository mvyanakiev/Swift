//
//  TableViewController.swift
//  07-Homework-TVC
//
//  Created by Milko Yanakiev on 30.05.18 г..
//  Copyright © 2018 г. Tra la la. All rights reserved.
//

import UIKit

enum keys {
    case name, years
}

class TableViewController: UITableViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1 }



    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfItems = self.presidents.count
        return numberOfItems
    }
    

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath)
        cell.textLabel?.text = presidents[indexPath.row][.name]
        cell.detailTextLabel?.text = presidents[indexPath.row][.years]
        return cell }
    

   

    
    let presidents:[[keys: String]] = [[.name:"Donald Trump", .years:"2017-"],
                                       [.name:"Barack Obama", .years:"2009-2017"],
                                       [.name:"George W. Bush", .years:"2001-2009"],
                                       [.name:"Bill Clinton", .years:"1993-2001"],
                                       [.name:"George H. Bush", .years:"1989-1993"],
                                       [.name:"Ronald Reagan", .years:"1981-1989"],
                                       [.name:"Jimmy Carter", .years:"1977-1981"],
                                       [.name:"Gerald Ford", .years:"1974-1977"],
                                       [.name:"Richard Nixon", .years:"1969-1974"],
                                       [.name:"Lyndon Johnson", .years:"1963-1969"],
                                       [.name:"John F. Kennedy", .years:"1961-1963"]]

}
