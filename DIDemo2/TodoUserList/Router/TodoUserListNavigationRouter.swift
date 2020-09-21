//
//  TodoUserListNavigationRouter.swift
//  TodoVIPER
//
//  Created by Mohamed El-Taweel on 9/8/20.
//  Copyright © 2020 Learning. All rights reserved.
//

import Foundation
import UIKit
import Swinject

class TodoUserListNavigationRouter: RouterTodoUserListProtocol{
    
    static func createModule(in window: UIWindow){
        var container = TodoUserListDIContainer()
        let viewController = container.resolve()
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
    var viewController: UIViewController?
    
    init(viewController: UIViewController?) {
        self.viewController = viewController
    }
        
    func showUserDetails(from user: User) {
//        UserTodoListNavigationRouter.createModule(in: self.viewController ?? UIViewController(), with: "\(user.id)")
    }
    
}
