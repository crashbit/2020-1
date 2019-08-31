//
//  ViewController.swift
//  Segues
//
//  Created by Germán Santos Jaimes on 8/24/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var users: [User] = [
        User(email: "alo@xxx.com", user: "cosita", password: "1234")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
        print(users)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let statusUser = defaults.bool(forKey: "statusUser") as Bool
        if statusUser {
            print("Usuario autenticado")
        }else{
            performSegue(withIdentifier: "thirdView", sender: self)
        }
        print("viewDidAppear")
    }

    
    @IBAction func cerrarSesion(_ sender: UIBarButtonItem) {
        let defaults = UserDefaults.standard
        defaults.set(false, forKey: "statusUser")
        performSegue(withIdentifier: "thirdView", sender: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! UserTableViewCell
        
        cell.email.text = users[indexPath.row].email
        cell.user.text = users[indexPath.row].user
        cell.password.text = users[indexPath.row].password
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addUser"{
            let addView = segue.destination as! AddUserViewController
            
            addView.viewController = self
        }
    }
    
}

