//
//  SecondViewController.swift
//  Mis Notas
//
//  Created by Andres Sandoval on 13/06/15.
//  Copyright (c) 2015 Andres Sandoval. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var nombreNota: UITextField!
    @IBOutlet var descripcionNota: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    @IBAction func agregarNotaArray(sender: UIButton){
        
        Admin.agragarNotas(nombreNota.text, descripcion: descripcionNota.text)
        self.view.endEditing(true)
        nombreNota.text = ""
        descripcionNota.text = ""
        self.tabBarController?.selectedIndex = 0
    }


}

