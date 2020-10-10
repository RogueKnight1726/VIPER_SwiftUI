//
//  ChatRoomRouter.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import UIKit


class ChatRoomRouter: ChatRoomPresenterToRouterProtocol{
    weak var presenter: ChatRoomPresenter?
    weak var viewController: UIViewController?
    var navigationController: UINavigationController?
}
