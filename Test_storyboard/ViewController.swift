//
//  ViewController.swift
//  Test_storyboard
//
//  Created by Саня Eloy on 10/11/19.
//  Copyright © 2019 Саня Eloy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomExample: UILabel!
    @IBOutlet weak var inputNumber: UILabel!
    
    var numberSum: String = ""
    var answer: Float32? = nil
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        answer = x3()!
    }
    
    func x3() -> Float32?{
        let randomNumberOne = UInt8(arc4random_uniform(100))
        let randomNumberTwo = UInt8(arc4random_uniform(100))
               
               func randomZnak() -> UInt8{
                   let randZnak = UInt8(arc4random_uniform(1))
                   return randZnak
               }
               
               let randZnak = randomZnak()
              
               switch randZnak {
               case 0:
                   randomExample.text = "\(randomNumberOne) + \(randomNumberTwo)"
               case 1:
                    randomExample.text = "\(randomNumberOne) - \(randomNumberTwo)"
               case 2:
                    randomExample.text = "\(randomNumberOne) * \(randomNumberTwo)"
               case 3:
                    randomExample.text = "\(randomNumberOne) / \(randomNumberTwo)"
               default:
                   break;
                      }
        let result:Float32? = resultNumberExample(randZnak, randomNumberOne, randomNumberTwo)
        return result
    }
    
    
    
    
    
    func resultNumberExample(_ znak:UInt8,_ One:UInt8,_ Two:UInt8) -> Float32?{
        var result: Float32? = nil
        
        switch znak{
        case 0:
             result = Float32(One) + Float32(Two)
        case 1:
             result = Float32(One) - Float32(Two)
        case 2:
             result = Float32(One) * Float32(Two)
        case 3:
             result = Float32(One) / Float32(Two)
        default:
            result = nil
            break;
        }
        return result!
    }
    
    @IBAction func mainButton(_ sender: UIButton){
            
            var numberButton: Int? = nil
            
            func buf(){
                numberSum += String(sender.tag)
                inputNumber.text = numberSum
            }
            
                    switch sender.tag {
                    case 0:
                        //numberSum += "0"
                       // inpuNumber.text = String(sender.tag)
    //                    numberSum += String(sender.tag)
    //                    inputNumber.text = numberSum
                        buf()
                    case 1:
                        buf()
                    case 2:
                        buf()
                    case 3:
                        buf()
                    case 4:
                        buf()
                    case 5:
                        buf()
                    case 6:
                        buf()
                    case 7:
                        buf()
                    case 8:
                        buf()
                    case 9:
                        buf()
                    default:
                        break;
                    }
        }
    


//    @IBOutlet weak var label: UILabel!
//    @IBAction func showMessage(){
////        let alertController = UIAlertController{
////            title: "Welcome", message:"Vasiliy",
////            preferredStyle: UIAlertControllerStyle.alert
////        }
//
//        let alertController = UIAlertController(title: "Welcome", message: "Vasiliy", preferredStyle: .alert)
//        alertController.addAction(UIAlertAction(title: "First", style: UIAlertAction.Style.default, handler: nil))
//        alertController.addAction(UIAlertAction(title: "Second", style: UIAlertAction.Style.default, handler: nil))
//        self.present(alertController, animated: true, completion: nil)
//}
//
//        @IBAction func changeLabelText(_ sender: UIButton) {
//            label.text = ("The \(sender.titleLabel!.text!.lowercased()) buton was pressed")
//        }
//
//    @IBAction func changeLabelTextRight(_ sender: UIButton) {
//        label.text = ("The \(sender.titleLabel!.text!.lowercased()) button was pressed")
//    }
    
    
   
    
    
    
    @IBAction func randomNumberExample(_ sender: UIButton) {
        //print(numberSum)
        //print(answer!)
        if Int(numberSum) == Int(answer!){
          
         let alertController = UIAlertController(title: "Result", message: "Правильно", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "ОК", style:
                UIAlertAction.Style.default, handler: restartFull))
        self.present(alertController, animated: true, completion: nil)
      }else {
         let alertController = UIAlertController(title: "Result", message: "Ответ не верный!", preferredStyle: UIAlertController.Style.alert)
                alertController.addAction(UIAlertAction(title: "Повторить", style: UIAlertAction.Style.default, handler: resRetry))
                alertController.addAction(UIAlertAction(title: "Отмена", style: UIAlertAction.Style.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
      }
       
    }
    func resRetry(alert: UIAlertAction){
        numberSum = ""
        inputNumber.text = ""
    }
    func restartFull(alert: UIAlertAction){
        answer = x3()
        numberSum = ""
        inputNumber.text = ""

    }

}


