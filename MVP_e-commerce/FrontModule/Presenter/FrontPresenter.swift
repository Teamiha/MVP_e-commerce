//
//  FrontPresenter.swift
//  MVP_e-commerce
//
//  Created by Михаил Светлов on 17.02.2023.
//

import Foundation

protocol FrontViewProtocol: AnyObject {
    func succes()
    func failure(error: Error)
}

protocol FrontPresenterProtocol: AnyObject {
    init(view: FrontViewProtocol, router: RouterProtocol)
    var goods: [Goods]? { get set }
    func tapOnTheGoods(goods: Goods?)
}

class FrontPresenter: FrontPresenterProtocol {
    weak var view: FrontViewProtocol?
    var router: RouterProtocol?
    var goods: [Goods]?
    
    required init(view: FrontViewProtocol, router: RouterProtocol) {
        self.view = view
        self.router = router
    }
    
    func tapOnTheGoods(goods: Goods?) {
        router?.showDetail(goods: goods)
    }
    
    
    
}
