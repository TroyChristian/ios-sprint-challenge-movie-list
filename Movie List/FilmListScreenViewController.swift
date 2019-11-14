//
//  FilmListScreenViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_219 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class FilmListScreenViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
   

    
    
   
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self 

        
        
        

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    let movieController = MovieController()
    
}


extension FilmListScreenViewController: UITableViewDataSource, UITableViewDelegate, addMovieDelegate {
    func movieWasSeen(movieCell: MovieTableViewCell) {
        guard let indexPath = tableView.indexPath(for: movieCell) else {return}
       let movie = movieController.movies[indexPath.row]
        movieController.toggleButton(movie: movie)
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(movieController.movies.count)
        return movieController.movies.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       
        guard let film = self.tableView.dequeueReusableCell(withIdentifier: "MovieCell") as?
            MovieTableViewCell else {return UITableViewCell()}
        let movie = movieController.movies[indexPath.row]
        film.movie = movie
        film.delegate = self
      return film
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          
          if segue.identifier == "AddMovieSegue" {
              if let addMovieVC = segue.destination as? AddMovieViewController {
                  // Hey, I'm (the table view controller) going to be the person you tell when a new friend is created
                
                  addMovieVC.delegate = self
                addMovieVC.movieController = movieController
              }
      
}
    }}

