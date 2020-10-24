//
//  ChatRoomBuilder.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import Foundation
import UIKit
import SwiftUI


func createChatRoomModule() -> MyProtocol{
    
    let router = ChatRoomRouter()
    let presenter = ChatRoomPresenter()
    let interactor = ChatRoomInteractor()
    let view = ChatRoomView()
    
    presenter.interactor = interactor
//    presenter.chatListStore = store
    presenter.router = router
    
    interactor.presenter = presenter
    router.presenter = presenter
    
    return view
}
