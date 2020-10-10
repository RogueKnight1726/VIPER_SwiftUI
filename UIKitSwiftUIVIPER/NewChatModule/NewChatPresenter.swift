//
//  NewChatPresenter.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import Foundation


class NewChatPresenter: NewChatInteractorToPresenterProtocol{
    var router: NewChatPresenterToRouterProtocol?
    var interactor: NewChatPresenterToInteractorProtocol?
    var view: NewChatPresenterToViewProtocol?
}


extension NewChatRouter: NewChatViewToPresenterProtocol{
    func viewAppeared() {
        
    }
}
