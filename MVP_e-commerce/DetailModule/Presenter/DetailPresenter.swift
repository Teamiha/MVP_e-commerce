//
//  DetailPresenter.swift
//  MVP_e-commerce
//
//  Created by Михаил Светлов on 17.02.2023.
//

import Foundation

protocol DetailViewProtocol: AnyObject {
    func succes()
    func failure(error: Error)
}

protocol DetailPresenterProtocol: AnyObject {
    init(view: DetailViewProtocol, router: RouterProtocol)
    var goods: [Goods]? { get set }
}

class DetailPresenter: DetailPresenterProtocol {

    weak var view: DetailViewProtocol?
    var router: RouterProtocol?
    var goods: [Goods]?
    
    required init(view: DetailViewProtocol, router: RouterProtocol) {
        self.view = view
        self.router = router
    }
}
