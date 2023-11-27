//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by MAC on 2023/02/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var viewmodel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func tapQuotesGeneratorButten(_ sender: Any) {
        
        let random = Int(arc4random_uniform(7)) // 0~6 사이의 난수를 랜덤으로 만들어줌
        let quote = viewmodel.quetos[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

