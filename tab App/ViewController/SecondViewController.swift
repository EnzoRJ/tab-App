//
//  SecondViewController.swift
//  tab App
//
//  Created by Enzo Rojas Jarpa on 4/11/19.
//  Copyright © 2019 Enzo Rojas Jarpa. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var fibonacci : [Int] = []
    var fiboId : Int = 1
    @IBOutlet weak var labelNumero: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var resultadoTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateLabel(id: Int(self.stepper.value))
        funcFibonacci()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        updateLabel(id :Int(sender.value))
        
    }
    
    func updateLabel(id: Int){
        self.fiboId = id
        self.labelNumero.text = "\(self.fiboId)"
        funcFibonacci()
    }
    
func funcFibonacci(){
    fibonacci = [0,1]
        if fiboId<=1||fiboId>=100 {
            return
        }
            for i in 2...fiboId{
                print("Indice \(i)")
                fibonacci.append(fibonacci[i-1] + fibonacci[i-2])
                print(fibonacci[i])
            }
    //Array de enteros a String para el textview
    let fiboString : [String] = fibonacci.compactMap({String($0)})
    //Separacion de numeros en textview
    let result : String = fiboString.joined(separator: " - ")
    //Asignacion al textview
    self.resultadoTextView.text = result
            //print(fibonacci)
}
    



}


