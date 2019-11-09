//
//  MovieController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_219 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
class MovieController{
    var movies:[Movie] = []
    
    func addMovie(title:String){
        let movie = Movie(name:title)
        movies.append(movie)
    }
    
    func toggleButton(movie:Movie){
        guard let movieIndex = movies.firstIndex(of: movie) else{return}
        movies[movieIndex].seen = !movie.seen
        
    }
    
}
