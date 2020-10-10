//
//  NewChatView.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import SwiftUI

struct NewChatView: View {
    
//    var presenter: NewChatViewToPresenterProtocol?
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
                .onAppear(perform: {
//                    presenter?.viewAppeared()
                })
            VStack {
                Text("New Chat")
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .padding()
                ScrollView {
                    LazyVStack{
                        Text("Hello")
                    }
                }
            }
        }
    }
}

struct NewChatView_Previews: PreviewProvider {
    static var previews: some View {
        NewChatView()
    }
}
