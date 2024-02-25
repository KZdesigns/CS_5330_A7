//
//  recipe.swift
//  CS_5330_A7
//
//  Created by Kyle Zimmerman on 2/24/24.
//

import Foundation

struct Recipe {
    var name: String
    var details: String
    
    static let recipeList: [Recipe] = [
          Recipe(name: "Classic Margherita Pizza", details: "A timeless pizza with simple tomato sauce, fresh mozzarella, basil leaves, and a drizzle of olive oil on a homemade crust."),
          Recipe(name: "Spaghetti Carbonara", details: "Creamy pasta made with egg, hard cheese, pancetta, and pepper. A classic Italian dish that's both comforting and easy to make."),
          Recipe(name: "Avocado Toast", details: "Ripe avocado spread on toasted bread, seasoned with salt, pepper, and a squeeze of lemon. Perfect for a healthy breakfast or snack."),
          Recipe(name: "Chicken Caesar Salad", details: "Crisp romaine lettuce, grilled chicken, croutons, and Parmesan cheese, all tossed in a creamy Caesar dressing."),
          Recipe(name: "Beef Tacos", details: "Ground beef cooked with taco seasoning, served in corn tortillas, and topped with lettuce, cheese, and salsa for a quick and tasty meal."),
          Recipe(name: "Vegetable Stir-Fry", details: "A mix of your favorite vegetables stir-fried with soy sauce, garlic, and ginger. Serve with rice or noodles for a complete meal."),
          Recipe(name: "Lemon Garlic Salmon", details: "Salmon fillets marinated in lemon juice, olive oil, and garlic, then baked or grilled to perfection. A healthy and flavorful dish."),
          Recipe(name: "Butternut Squash Soup", details: "Creamy and comforting soup made from roasted butternut squash, onions, stock, and herbs, blended until smooth."),
          Recipe(name: "Quinoa Salad", details: "Fluffy quinoa mixed with cucumbers, tomatoes, onions, and feta cheese, dressed with olive oil and lemon juice. A refreshing and nutritious salad."),
          Recipe(name: "Chocolate Chip Cookies", details: "Classic cookies with a chewy center, loaded with chocolate chips. Perfect for baking and sharing with friends and family.")
      ]
}
