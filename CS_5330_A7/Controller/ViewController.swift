//
//  ViewController.swift
//  CS_5330_A7
//
//  Created by Kyle Zimmerman on 2/24/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Recipe.recipeList.count
    }
  

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = Recipe.recipeList[indexPath.row].name
        content.image = UIImage(named: String(indexPath.row+1))
        content.imageProperties.maximumSize = CGSize(width: 40, height: 40)
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: self)
        tableView.deselectRow(at: indexPath, animated: false)
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            let indexPath = tableView.indexPathForSelectedRow
            let detailsController = segue.destination as! DetailViewController
            detailsController.index = indexPath!.row
            detailsController.recipe = Recipe.recipeList[indexPath!.row]
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setHeaderLabel()
        tableView.reloadData()
    }
    
    func setHeaderLabel() {
        headerLabel.text = "Available Recipes"
    }
}

