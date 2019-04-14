//
//  FirstViewController.swift
//  tab App
//
//  Created by Enzo Rojas Jarpa on 4/11/19.
//  Copyright © 2019 Enzo Rojas Jarpa. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var edadLabel: UILabel!
    @IBOutlet weak var edadSilder: UISlider!
    @IBOutlet weak var botonLabel: UIButton!
    var varEdad = 1
    var userName = ""
    
    override func viewDidLoad() {
        self.actualizarEtiqueta()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //Cierra el teclado
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Se ha pulsado el enter en un textfield")
        textField.resignFirstResponder()
        if let theText = textField.text{
            self.userName = theText
            print(theText)
        }
        return true
    }
    
    @IBAction func sliderEdad(_ sender: UISlider) {
        actualizarEtiqueta()
    }
    func actualizarEtiqueta(){
        varEdad = Int(self.edadSilder.value)
        self.edadLabel.text = "\(varEdad)"
    }
    
    @IBAction func validarDatos(_ sender: UIButton) {
        
        let entraALaFiesta = (userName == "Enzo") || (varEdad >= 18)

        if entraALaFiesta {
         print("Bienvenido a la fiesta")
            self.view.backgroundColor = UIColor(red: 27.0/255, green: 176.0/255, blue: 74.0/255, alpha: 0.7)
        }
        else{
            print("Lo siento no tienes acceso")
            self.view.backgroundColor = UIColor(red: 100.0/255, green: 1.0/255, blue: 80.0/255, alpha: 0.7)
            
        }
        /*if userName == "Enzo" {
            print("Adelante puedes pasar por llamarte Enzo")
            self.view.backgroundColor = UIColor(red: 49.0/255, green: 236.0/255, blue: 93.0/255, alpha: 0.7)
        } else {
            if varEdad >= 18{
            print("Puedes pasar eres mayor de edad")
        }
        else{
            print("Lo siento no puedes ingresar")
                self.view.backgroundColor = UIColor(red: 250.0/255, green: 50.0/255, blue: 50.0/255, alpha: 0.8)
        }
    }*/
    }
    
}


