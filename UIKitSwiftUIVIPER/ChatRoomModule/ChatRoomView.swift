//
//  CHatRoomView.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import SwiftUI
import Combine

struct ChatRoomView: View {
    
    var presenter: ChatRoomViewToPresenterProtocol?
    @State var text = ""
    @State private var keyboardHeight: CGFloat = 0
    
    var body: some View {
        VStack {
            Text("Chat").onAppear(perform: {
            })
            Image("picture")
                .resizable()
                .frame(maxWidth: .infinity)
                .aspectRatio(contentMode: .fill)
            HStack {
                TextField("Chat message ..", text: $text)
                    .padding()
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 60, height: 60)
                    .padding()
            }
        }
//        .padding(.bottom, keyboardHeight)
//        .onReceive(Publishers.keyboardHeight) { self.keyboardHeight = $0 }
    }
}

struct ChatRoomView_Previews: PreviewProvider {
    static var previews: some View {
        ChatRoomView()
    }
}

extension ChatRoomView: MyProtocol{
    
}


protocol MyProtocol{
    
}
