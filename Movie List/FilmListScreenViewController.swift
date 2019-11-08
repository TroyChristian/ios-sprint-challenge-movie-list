//
//  FilmListScreenViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_219 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class FilmListScreenViewController: UIViewController {
    var movies: [Movie] = []
    
  

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        

}
}

extension FilmListScreenViewController: UITableViewDataSource, UITableViewDelegate,  addMovieDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let movie = movies[indexPath.row]
        let film = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as! MovieTableViewCell
        film.setMovieTitle(movie:movie)
        return film 
    }
    
    func movieWasCreated(movie: Movie) {
            movies.append(movie)
            //tableView.reloadData()
            dismiss(animated: true, completion: nil)
        }
}
