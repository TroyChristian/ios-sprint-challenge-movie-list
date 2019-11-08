//
//  FilmListScreenViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_219 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class FilmListScreenViewController: UIViewController, addMovieDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = [Movie(name:"Placeholder")]
    func movieWasCreated(movie:Movie){
        movies.append(movie)
        tableView.reloadData() 
         
        
    }
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self 

        
        
        

}
}

extension FilmListScreenViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let movie = movies[indexPath.row]
        let film = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as! MovieTableViewCell
        film.setMovieTitle(movie:movie)
        
        return film
    }
    
    
}
