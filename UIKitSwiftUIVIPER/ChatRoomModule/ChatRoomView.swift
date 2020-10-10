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
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .onAppear(perform: {
//
//            })
        Image("picture")
            .resizable()
            .frame(maxWidth: .infinity,maxHeight: .infinity)
    }
}

struct ChatRoomView_Previews: PreviewProvider {
    static var previews: some View {
        ChatRoomView()
    }
}
