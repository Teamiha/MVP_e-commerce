//
//  Router.swift
//  MVP_e-commerce
//
//  Created by Михаил Светлов on 17.02.2023.
//

import UIKit

protocol RouterMain {
    var navigationController: UINavigationController? { get set }
    var assemblyBilder: AssemblyBilderProtocol? { get set }
}

protocol RouterProtocol: RouterMain {
    func initialViewController()
    func showDetail(goods: Goods?)
    func showBackEnd(goods: Goods?)
    
    
}

class Router: RouterProtocol {
    
    var navigationController: UINavigationController?
    var assemblyBilder: AssemblyBilderProtocol?
    
    init(navigationController: UINavigationController, assemblyBilder: AssemblyBilderProtocol) {
        self.navigationController = navigationController
        self.assemblyBilder = assemblyBilder
    }
    
    func showDetail(goods: Goods?) {
        if let navigationController = navigationController {
            guard let detailViewController = assemblyBilder?.createDetailModule(goods: goods, router: self) else {return}
            navigationController.pushViewController(detailViewController, animated: true)
        }
    }
    
    func initialViewController() {
        if let navigationController = navigationController {
            guard let frontViewController = assemblyBilder?.createFrontModule(router: self) else {return}
            navigationController.viewControllers = [frontViewController]
        }
    }
    
    func showBackEnd(goods: Goods?) {
        if let navigationController = navigationController {
            guard let backViewController = assemblyBilder?.createBackModule(goods: goods, router: self) else {return}
            navigationController.pushViewController(backViewController, animated: true)
        }
    }
    
    
}

