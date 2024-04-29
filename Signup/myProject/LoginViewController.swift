//
//  LoginViewController.swift
//  myProject
//
//  Created by STUDENT on 4/15/24.
//

import UIKit

class LoginViewController: UIViewController , UITextFieldDelegate{
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var name: UILabel!
    @IBOutlet var enterName: UITextField!
    @IBOutlet var email: UILabel!
    @IBOutlet var enterEmail: UITextField!
    @IBOutlet var password: UILabel!
    @IBOutlet var enterPassword: UITextField!
    @IBOutlet var button1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        if string == ""
        {
            return true
        }
        if textField == enterName{
            if textField.text?.count ?? 0 > 15{
                return false
            }
        }
        return true
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
extension String {

    func isEmail() -> Bool {
        let emailRegEx = "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+$"
        return NSPredicate(format:"SELF MATCHES %@", emailRegEx).evaluate(with: self)
    }
}
