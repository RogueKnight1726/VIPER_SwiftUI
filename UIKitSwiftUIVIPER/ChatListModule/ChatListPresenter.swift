//
//  ChatListPresenter.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import Foundation
import SwiftUI


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
    func viewAppeared(){
        interactor?.getInitialViewModelArray()
    }
    
    func linkBuilder<Content: View>(for trip: String, @ViewBuilder content: () -> Content) -> some View {
        NavigationLink(destination: router?.showChatDetail() as! ChatRoomView) {
          content()
        }
    }
}
