//
//  CHatRoomView.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import SwiftUI

struct ChatRoomView: View {
    
    var presenter: ChatRoomViewToPresenterProtocol?
    
    var body: some View {
        Text("Chat")
            .onAppear(perform: {
                
            })
    }
}

struct ChatRoomView_Previews: PreviewProvider {
    static var previews: some View {
        ChatRoomView()
    }
}
