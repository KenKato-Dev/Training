//
//  ModalViewController.swift
//  LikeTabTraining
//
//  Created by 加藤研太郎 on 2022/04/05.
//

import UIKit

class ModalViewController: UIViewController,UITextFieldDelegate {
    private var baseArray = Food(refOrFreezer: .refrigator, kind: .other, name: String(), quantity: Int(), unit: Int(), IDkey: String())
    @IBOutlet weak var refrigatorButton: UIButton!
    @IBOutlet weak var freezerButton: UIButton!
    @IBOutlet weak var meetButton: UIButton!
    @IBOutlet weak var fishButton: UIButton!
    @IBOutlet weak var vegetableButton: UIButton!
    @IBOutlet weak var fruitButton: UIButton!
    @IBOutlet weak var seasoningButton: UIButton!
    @IBOutlet weak var drinkButton: UIButton!
    @IBOutlet weak var sweetButton: UIButton!
    @IBOutlet weak var otherButton: UIButton!
    @IBOutlet weak var foodNameTextField: UITextField!
    @IBOutlet weak var quantityTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.addGestureRecognizer(UIGestureRecognizer(target: self, action: #selector(hideKeyboard)))
        
        refrigatorButton.addTarget(self, action: #selector(selectRef), for: .touchUpInside)
//        refrigatorButton.addAction(.init(handler: { _ in
//            self.baseArray.refOrFreezer = .refrigator
//            print("Refタップされました")
//        }), for: .touchUpInside)
//        freezerButton.addAction(.init(handler: { _ in
//            self.baseArray.refOrFreezer = .freezer
//            print("Freタップされました")
//        }), for: .touchUpInside)
//        meetButton.addAction(.init(handler: { _ in
//            self.baseArray.kind = .meat
//            print("Meタップされました")
//        }), for: .touchUpInside)
//        fishButton.addAction(.init(handler: { _ in
//            self.baseArray.kind = .fish
//            print("Feタップされました")
//        }), for: .touchUpInside)
//        vegetableButton.addAction(.init(handler: { <#UIAction#> in
//            <#code#>
//        }), for: <#T##UIControl.Event#>)
//        foodNameTextField.isHidden = true
//        quantityTextField.isHidden = true
    }
    @objc func hideKeyboard(){
        self.view.endEditing(true)
    }
    @IBAction func preserve(_ sender: Any) {
        FoodData.shared.add(baseArray)
        print(FoodData.shared.getfoodArray())
        dismiss(animated: true, completion: nil)
    }
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @objc func selectRef(){
        self.baseArray.refOrFreezer = .refrigator
        print("Refタップされました")
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
