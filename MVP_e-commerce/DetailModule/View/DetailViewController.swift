//
//  DetailViewController.swift
//  MVP_e-commerce
//
//  Created by Михаил Светлов on 17.02.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    var presenter: DetailPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DetailViewController: DetailViewProtocol {
    func succes() {
        return
    }
    
    func failure(error: Error) {
        return
    }
    
    
}
