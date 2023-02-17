//
//  BackPresenter.swift
//  MVP_e-commerce
//
//  Created by Михаил Светлов on 17.02.2023.
//

import Foundation

protocol BackViewProtocol: AnyObject {
    func succes()
    func failure(error: Error)
}

protocol BackPresenterProtocol: AnyObject {
    init(view: BackViewProtocol, router: RouterProtocol)
    var goods: [Goods]? { get set }
    func addGoods(goods: Goods?)
    func editGoods(goods:Goods?)
}

class BackPresenter: BackPresenterProtocol {
    weak var view: BackViewProtocol?
    var router: RouterProtocol?
    var goods: [Goods]?
    
    required init(view: BackViewProtocol, router: RouterProtocol) {
        self.view = view
        self.router = router
    }
    
    func addGoods(goods: Goods?) {
        
    }
    
    func editGoods(goods:Goods?) {
        
    }
    
    
}

