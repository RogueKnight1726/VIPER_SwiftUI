//
//  ChatRoomBuilder.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import Foundation
import UIKit
import SwiftUI


func createChatRoomModule(view: ChatRoomView){
    
    let router = ChatRoomRouter()
    let presenter = ChatRoomPresenter()
    let interactor = ChatRoomInteractor()
    
    
    presenter.interactor = interactor
//    presenter.chatListStore = store
    presenter.router = router
    
    interactor.presenter = presenter
    router.presenter = presenter
    
}
