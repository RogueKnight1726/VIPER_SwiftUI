//
//  ChatRoomContract.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//


import Combine
import UIKit

protocol ChatRoomPresenterToViewProtocol: class{
    
}
protocol ChatRoomPresenterToInteractorProtocol: class {
    
}

protocol ChatRoomPresenterToRouterProtocol: class {
    
}

protocol ChatRoomInteractorToPresenterProtocol: class {
    
}

protocol ChatRoomViewToPresenterProtocol: class {
    func chatRoomViewAppeared()
}



extension Publishers {
    static var keyboardHeight: AnyPublisher<CGFloat, Never> {
        let willShow = NotificationCenter.default.publisher(for: UIApplication.keyboardWillShowNotification)
            .map { $0.keyboardHeight }
        
        let willHide = NotificationCenter.default.publisher(for: UIApplication.keyboardWillHideNotification)
            .map { _ in CGFloat(0) }
        
        return MergeMany(willShow, willHide)
            .eraseToAnyPublisher()
    }
}

extension Notification {
    var keyboardHeight: CGFloat {
        return (userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect)?.height ?? 0
    }
}
