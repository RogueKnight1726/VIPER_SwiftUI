//
//  ChatListContract.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import Foundation
import SwiftUI


protocol ChatListPresenterToViewProtocol: class{
    
}
protocol ChatListPresenterToInteractorProtocol: class {
    func getInitialViewModelArray()
}

protocol ChatListPresenterToRouterProtocol: class {
    func showNewChat()
    func showChatDetail() -> MyProtocol
}

protocol ChatListInteractorToPresenterProtocol: class {
    
}

protocol ChatListViewToPresenterProtocol: class {
    func viewAppeared()
}

protocol ChatListFireBaseProtocol: class{
    func recievedThreadList(threadListResponse: [String : AnyObject])
}
