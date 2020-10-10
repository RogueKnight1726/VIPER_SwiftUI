//
//  NewChatBuilder.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import UIKit
import SwiftUI


func createNewChatModule() -> UIViewController{
    
//    let router = NewChatRouter()
//    let presenter = NewChatPresenter()
//    let interactor = NewChatInteractor()
    let view = NewChatView()
//
//    presenter.interactor = interactor
//    presenter.router = router
//    interactor.presenter = presenter
    
    let viewController = UIHostingController(rootView: view)
//    router.viewController = viewController
    
    return viewController
}
