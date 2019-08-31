//
//  AddUserViewController.swift
//  Segues
//
//  Created by Germán Santos Jaimes on 8/24/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import UIKit

class AddUserViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var viewController: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addUser(_ sender: UIButton){
        if let correo = email.text, let usuario = user.text, let pass = password.text{
         var nuevoUsuario = User(email: correo, user: usuario, password: pass)
         viewController.users.append(nuevoUsuario)
         dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func cancel(_ sender: UIButton){
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
