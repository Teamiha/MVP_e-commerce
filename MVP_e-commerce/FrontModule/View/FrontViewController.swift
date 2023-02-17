//
//  FrontViewController.swift
//  MVP_e-commerce
//
//  Created by Михаил Светлов on 17.02.2023.
//

import UIKit

class FrontViewController: UIViewController {
    
    var presenter: FrontPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}

extension FrontViewController: FrontViewProtocol {
    func succes() {
        return
    }
    
    func failure(error: Error) {
        return
    }
    
    
}
