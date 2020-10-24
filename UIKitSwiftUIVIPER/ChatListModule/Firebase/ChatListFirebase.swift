//
//  ChatListFirebase.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import FirebaseDatabase


class ChatListFirebase{
    
    var ref = Database.database().reference()
    weak var interactor: ChatListFireBaseProtocol?
    
    func getChatThreadsFromFirebase(){
        ref.observe(.value) { [weak self] (snapshot) in
            print(snapshot)
            let values = snapshot.value as? [String : AnyObject] ?? [:]
            self?.interactor?.recievedThreadList(threadListResponse: values)
        }
    }
}
