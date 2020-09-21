//
//  TodoUserListDIContainer.swift
//  DIDemo2
//
//  Created by Mohamed El-Taweel on 9/21/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import Foundation
import UIKit
import Swinject

struct TodoUserListDIContainer{
    
    var container : Container
    
    init() {
        self.container = Container()
    }
    
    func resolve()->TodoUserListViewController{
        self.register()
        return container.resolve(TodoUserListViewController.self)!
    }
    
    private func register(){
        let viewController = UIViewController.create(storyboardName: "TodoUserList", viewControllerID: "TodoUserListViewController") as! TodoUserListViewController
        let interactor = TodoUserListInteractor(presenter: nil)
        let router = TodoUserListNavigationRouter(viewController: nil)
        let presenter = TodoUserListPresenter(view: viewController, interactor: interactor, router: router)
        interactor.presenter = presenter
        viewController.presenter = presenter
        router.viewController = viewController
        presenter.router = router
        container.register(TodoUserListViewController.self) { _ in viewController }
    }
    
    
    
}
