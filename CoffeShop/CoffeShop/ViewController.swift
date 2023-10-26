//
//  ViewController.swift
//  CoffeeShop
//
//  Created by nika razmadze on 24.10.23.
//

import UIKit

//  სხვანაირად არ კითხულობდა ამას, ამიტომაა აქ
struct Coffee {
    let productName: String
    let dressing: String
    var price: Double
    let description: String
}

class ViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var dressingLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    // Declaring variable
    var coffee: Coffee? = Coffee(productName: "Cappuccino",
                                 dressing: "with Chocolate",
                                 price: 0.0,
                                 description: "A cappuccino is a coffee-based beverage that originates from Italy, and is made with espresso, steamed milk, and milk foam. A typical cappuccino contains around 150 calories, though this number can vary depending on the recipe or chain")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let coffee = coffee {
            productNameLabel.text = coffee.productName
            dressingLabel.text = coffee.dressing
            descriptionLabel.text = coffee.description
            priceLabel.text = "For you: $ \(coffee.price)"
        }
    }
}


