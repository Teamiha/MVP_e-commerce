//
//  ModuleBilder.swift
//  MVP_e-commerce
//
//  Created by Михаил Светлов on 17.02.2023.
//

import UIKit

protocol AssemblyBilderProtocol {
    
    func createFrontModule(router: RouterProtocol) -> UIViewController
    func createDetailModule(goods: Goods?, router: RouterProtocol) -> UIViewController
    func createBackModule(goods: Goods?, router: RouterProtocol) -> UIViewController
}

class ModuleBuilder: AssemblyBilderProtocol {
    
    func createFrontModule(router: RouterProtocol) -> UIViewController {
        let view = FrontViewController()
        let presenter = FrontPresenter(view: view, router: router)
        view.presenter = presenter
        return view
    }
    
    func createDetailModule(goods: Goods?, router: RouterProtocol) -> UIViewController {
        let view = DetailViewController()
        let presenter = DetailPresenter(view: view, router: router)
        view.presenter = presenter
        return view
    }
    
    func createBackModule(goods: Goods?, router: RouterProtocol) -> UIViewController {
        let view = BackViewController()
        let presenter = BackPresenter(view: view, router: router)
        view.presenter = presenter
        return view
    }
    
}

