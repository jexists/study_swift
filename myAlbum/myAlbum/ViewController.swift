//
//  ViewController.swift
//  myAlbum
//
//  Created by jexists on 2021/10/26.
//

import UIKit

class ViewController: UIViewController {
    var currentValue = 0
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }

    @IBAction func hello(_ sender: Any) {
//        print("hello")
        let message = "가격은 ₩\(currentValue) 입니다."
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
         
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
         refresh()
    }
    
    func refresh() {
    let randomPrice = arc4random_uniform(10000) + 1
    currentValue = Int(randomPrice)
    priceLabel.text = "\(currentValue)원"
    }
    
}

