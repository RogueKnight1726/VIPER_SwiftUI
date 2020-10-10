//
//  ChatListPresenter.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import Foundation


class ChatListPresenter: ChatListInteractorToPresenterProtocol{
    var router: ChatListPresenterToRouterProtocol?
    var interactor: ChatListPresenterToInteractorProtocol?
    var view: ChatListPresenterToViewProtocol?
    var chatListStore: ChatListStore?
    
    
    func showNewButtonAction(){
        router?.showNewChat()
    }
}

extension ChatListPresenter: ChatListViewToPresenterProtocol{
    
}
