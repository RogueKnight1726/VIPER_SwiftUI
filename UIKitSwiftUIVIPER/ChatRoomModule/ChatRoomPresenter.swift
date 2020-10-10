//
//  ChatRoomPresenter.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import Foundation

class ChatRoomPresenter: ChatRoomInteractorToPresenterProtocol{
    var router: ChatRoomPresenterToRouterProtocol?
    var interactor: ChatRoomPresenterToInteractorProtocol?
    var view: ChatRoomPresenterToViewProtocol?
//    var chatListStore: ChatListStore?
}


extension ChatRoomPresenter: ChatRoomViewToPresenterProtocol{
    func chatRoomViewAppeared() {
        
    }
    
    
}
