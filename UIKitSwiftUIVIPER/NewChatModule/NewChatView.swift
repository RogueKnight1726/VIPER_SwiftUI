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
                
                ScrollView{
                    LazyVStack{
                        ForEach(0..<20){ item in
                            NewChatCell()
                        }
                    }
                }
                
//                ScrollView {
//                    LazyVStack{
//                        Text("Hello")
//                    }
//                }
            }
        }
    }
}

struct NewChatView_Previews: PreviewProvider {
    static var previews: some View {
        NewChatView()
    }
}

struct NewChatCell: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 48, height: 48)
                .foregroundColor(.blue)
            VStack(alignment: .leading) {
                Text("IV A")
                    .font(.system(size: 15))
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                Text("26 students - 40 members")
                    .font(.system(size: 12))
                    .fontWeight(.regular)
                    .opacity(0.56)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(.leading, 16)
        .padding(.bottom, 8)
    }
}
