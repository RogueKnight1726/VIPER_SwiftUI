//
//  ChatListFirebase.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import FirebaseDatabase


class ChatListFirebase{
    
    var ref = Database.database().reference()
    
    func getChatThreadsFromFirebase(){
        ref.observeSingleEvent(of: .value) { [weak self] (snapshot) in
            print(snapshot)
        }
    }
}
