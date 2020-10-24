//
//  ChatListBuilder.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import UIKit
import SwiftUI



func createChatListModule(with navigationController: UINavigationController) -> UIViewController{
    
    let router = ChatListRouter()
    let presenter = ChatListPresenter()
    let interactor = ChatListInteractor()
    let store = ChatListStore()
    let view = ChatListView(presenter: presenter, store: store)
    let firebase = ChatListFirebase()
    
    presenter.interactor = interactor
    presenter.chatListStore = store
    presenter.router = router
    
    interactor.presenter = presenter
    interactor.firebase = firebase
    router.presenter = presenter
    
    
    firebase.interactor = interactor
    
    let viewController = UIHostingController(rootView: view)
    router.viewController = viewController
    router.navigationController = navigationController
    
    return viewController
}
