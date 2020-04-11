//
//  MainVC.swift
//  Hizir
//
//  Created by Yalcin TUR on 12.04.2020.
//  Copyright © 2020 inocom. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var hastaneLabel: UILabel!
    
    @IBOutlet weak var adLabel: UILabel!
    
    @IBOutlet weak var gorevLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        gorevLabel.text = ""
        adLabel.text = ""
        hastaneLabel.text = ""
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
