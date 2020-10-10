//
//  ChatListStore.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import Foundation


class ChatListStore: ObservableObject{
    @Published var chatList: [ChatListViewModel] = []
}
