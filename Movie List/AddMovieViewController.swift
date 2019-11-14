//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_219 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
protocol addMovieDelegate{
    func movieWasSeen(movieCell:MovieTableViewCell)
}

class AddMovieViewController: UIViewController {
     var delegate: addMovieDelegate?
    var movieController:MovieController?
    @IBOutlet weak var newMovieTextField: UITextField!
    @IBAction func AddMovieButtonTapped(_ sender: Any) {
        if let newName = newMovieTextField.text, !newName.isEmpty {
            movieController?.addMovie(title:newName)
           
            self.dismiss(animated: true, completion: nil)
            
        }
    }
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newMovieTextField.delegate = self
       

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
extension AddMovieViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // This drops the keyboard
        textField.resignFirstResponder()
        
        return true
    }
}
