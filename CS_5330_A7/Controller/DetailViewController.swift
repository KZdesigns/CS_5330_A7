//
//  DetailViewController.swift
//  CS_5330_A7
//
//  Created by Kyle Zimmerman on 2/24/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var recipeLabel: UILabel!
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeDetails: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var recipe: Recipe?
    var index: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRecipeImage()
        setRecipeLabel()
        setRecipeDetails()
        setBackButtonText()
    }
    
    func setRecipeLabel() {
        recipeLabel.text = recipe?.name
    }
    
    func setRecipeImage() {
        recipeImage.image = UIImage(named: String(index!+1))
    }
    
    func setRecipeDetails() {
        recipeDetails.text = recipe?.details
    }
    
    func setBackButtonText() {
        backButton.setTitle("Go Back To List", for: .normal)
    }
    
    
    @IBAction func backToListView(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
