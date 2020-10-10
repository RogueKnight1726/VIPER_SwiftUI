//
//  ChatListContract.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import Foundation


protocol ChatListPresenterToViewProtocol: class{
    
}
protocol ChatListPresenterToInteractorProtocol: class {
    func getInitialViewModelArray()
}

protocol ChatListPresenterToRouterProtocol: class {
    func showNewChat()
}

protocol ChatListInteractorToPresenterProtocol: class {
    
}

protocol ChatListViewToPresenterProtocol: class {
    func viewAppeared()
}
