//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_219 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
protocol addMovieDelegate{
    func movieWasCreated(movie:Movie)
}

class AddMovieViewController: UIViewController {
    @IBOutlet weak var newMovieTextField: UITextField!
    
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
