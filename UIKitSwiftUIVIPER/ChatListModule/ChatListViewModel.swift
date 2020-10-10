//
//  ChatListViewModel.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import Foundation
import Combine


class ChatListViewModel: ObservableObject,Identifiable{
    var id = UUID()
    
    let objectWillChange = ObservableObjectPublisher()
   
    @Published var error: Bool = false {
        willSet {
            self.objectWillChange.send()
        }
    }

    @Published var todos: [ChatListEntity] = [] {
       willSet {
            self.objectWillChange.send()
        }
    }
}
