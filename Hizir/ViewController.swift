//
//  ViewController.swift
//  Hizir
//
//  Created by Yalcin TUR on 11.04.2020.
//  Copyright © 2020 inocom. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var tcKimlikTextField: UITextField!
    
    @IBOutlet weak var eDevletTextField: UITextField!
    
    var tcKimlik = "" as String
          
    var eDevlet = "" as String
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func girisYapButton(_ sender: UIButton) {


        guard let tcKimlik = tcKimlikTextField.text else { return }
        guard let eDevlet = eDevletTextField.text else { return }
        
            let ref = Database.database().reference()
            ref.child("kullanicilar").observeSingleEvent(of: .value, with: { (snapshot) in
            if snapshot.hasChild(eDevlet){
                Database.database().reference().child("kullanicilar").child(eDevlet).child("Kimlik").observeSingleEvent(of: .value) { (snapshot) in
                guard let gercekKimlik = snapshot.value as? Int else { return }
                    if (Int(gercekKimlik) == Int(tcKimlik)) {
                            print("evet")
                        
                        }
                    else{
                        let alertController = UIAlertController(title: "Hata", message:"Lütfen Tekrar Deneyin", preferredStyle: .alert)
                        let defaultAction = UIAlertAction(title: "Tamam", style: .cancel, handler: nil)
                        alertController.addAction(defaultAction)
                        self.present(alertController, animated: true, completion: nil)
                        }
                }
                }
                else{
                    let alertController = UIAlertController(title: "Hata", message:"Lütfen Tekrar Deneyin", preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "Tamam", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                    }
            })
        }
}

