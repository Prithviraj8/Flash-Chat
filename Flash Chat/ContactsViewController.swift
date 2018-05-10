//
//  ContactsViewController.swift
//  Flash Chat
//
//  Created by ts krishna on 01/04/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import UIKit
import Firebase

class ContactsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   private var contacts = [Contact]()
    
    @IBOutlet weak var myTable: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
    
       // cell.textLabel?.text = "This works"
        return cell

    }

    func getContact(contacts: [Contact]) {
        
    }
 
    @IBAction func addContact(_ sender: UIBarButtonItem) {
        
        let contactDB = Database.database().reference().child("Contacts")
        
}
    @IBAction func logout(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
