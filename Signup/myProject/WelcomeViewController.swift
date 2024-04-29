//
//  Sign_In.swift
//  myProject
//
//  Created by STUDENT on 4/15/24.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBAction func inside(_ sender: Any) {
        let controller = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(identifier: "loginViewController")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBOutlet var Button2: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
