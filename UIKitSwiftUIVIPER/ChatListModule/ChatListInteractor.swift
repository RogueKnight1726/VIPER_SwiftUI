//
//  ChatListInteractor.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import Foundation


class ChatListInteractor: ChatListPresenterToInteractorProtocol{
    
    weak var presenter: ChatListInteractorToPresenterProtocol?
    var firebase: ChatListFirebase?
    
    func getInitialViewModelArray(){
        self.getFirebaseChatThreads()
    }
    
    func getFirebaseChatThreads(){
        firebase?.getChatThreadsFromFirebase()
    }
}



extension ChatListInteractor: ChatListFireBaseProtocol{
    func recievedThreadList(threadListResponse: [String : AnyObject]) {
        let data = try? JSONSerialization.data(withJSONObject: threadListResponse)
        
        let decoder = JSONDecoder()
        do{
            guard let unwrappedData = data else { return }
            let model = try decoder.decode(ChatListEntity.self, from: unwrappedData)
            print("Model : \(model)")
        } catch {
            print("Some exception happened")
        }
    }
    
    
}
