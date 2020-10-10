//
//  ChatListRouter.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import UIKit
import SwiftUI

class ChatListRouter: ChatListPresenterToRouterProtocol{
    func showNewChat() {
        let newChatController = createNewChatModule()
        viewController?.present(newChatController, animated: true, completion: nil)
    }
    
    weak var presenter: ChatListPresenter?
    weak var viewController: UIViewController?
    var navigationController: UINavigationController?
    

}
