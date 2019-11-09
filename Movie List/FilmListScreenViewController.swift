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
   
    
    var movies: [Movie] = [Movie(name:"Placeholder")]
    func movieWasCreated(movie:Movie){
        print(\(movie))
        movies.append(movie)
        tableView.reloadData() 
         
        
    }
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self 

        
        
        

    } }


extension FilmListScreenViewController: UITableViewDataSource, UITableViewDelegate, addMovieDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let movie = movies[indexPath.row]
        let film = self.tableView.dequeueReusableCell(withIdentifier: "MovieCell") as?
             MovieTableViewCell
        film?.movie = lastPassedMovie
        
        return film!
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          
          if segue.identifier == "AddMovieSegue" {
              if let addMovieVC = segue.destination as? AddMovieViewController {
                  // Hey, I'm (the table view controller) going to be the person you tell when a new friend is created
                  addMovieVC.delegate = self
              }
      
}
    }}

