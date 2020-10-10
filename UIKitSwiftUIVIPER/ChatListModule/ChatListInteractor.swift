//
//  ChatListInteractor.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import Foundation


class ChatListInteractor: ChatListPresenterToInteractorProtocol{
    
    weak var presenter: ChatListInteractorToPresenterProtocol?
    var firebase = ChatListFirebase()
    
    func getInitialViewModelArray(){
        self.getFirebaseChatThreads()
    }
}



extension ChatListInteractor{
    func getFirebaseChatThreads(){
        firebase.getChatThreadsFromFirebase()
    }
}
