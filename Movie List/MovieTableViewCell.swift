//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_219 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieName: UILabel!
    
    @IBOutlet weak var buttonLabel: UIButton!
    @IBAction func onButtonTapped(_ sender: Any) {
    }
    
    
    func setMovieTitle(movie:Movie){
        movieName.text = movie.name
    }
    
}
