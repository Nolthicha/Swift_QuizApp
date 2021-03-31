//
//  ResultViewController.swift
//  Quiz App
//
//  Created by Nolthicha Ngaongam on 11/8/2563 BE.
//  Copyright © 2563 Nolthicha Ngaongam. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var score: Int?
    
    let viewController = ViewController()
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let score = self.score {
            resultLabel.text = "\(score)"
        }
    }
    
    @IBAction func dismissViewController(_ sender: UIBarButtonItem) {
        if let presenter = ResultViewController.self as? ViewController {
            presenter.contacts.append(viewController.questionNumber)
        }
        dismiss(animated: true, completion: nil)
    }
}
