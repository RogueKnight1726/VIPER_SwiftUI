//
//  ChatListView.swift
//  UIKitSwiftUIVIPER
//
//  Created by Swathy Sudarsanan on 10/10/20.
//

import SwiftUI
import Combine


struct ChatListView: View {
    var presenter: ChatListPresenter?
    @ObservedObject var store = ChatListStore()
    
    func newChatButtonAction(){
        presenter?.showNewButtonAction()
    }
    
    
    var body: some View {
        ZStack {
            NavigationView{
                ScrollView(.vertical) {
                    LazyVStack(spacing: 0) {
                        ChatListCell(unreadCount: 1)
                        ForEach(store.chatList) { item in
                            ChatListCell(unreadCount: 0)
                        }
                    }
                }
                .navigationTitle("Chat")
                .navigationBarItems(
                trailing:
                    Button(action: newChatButtonAction, label: {
                        Image(systemName: "square.and.pencil")
                    })
                )
            }
            .background((Color(#colorLiteral(red: 0.9596566558, green: 0.9596566558, blue: 0.9596566558, alpha: 1))))
        }
    }
}

struct ChatListView_Previews: PreviewProvider {
    static var previews: some View {
        ChatListView()
            .preferredColorScheme(.light)
    }
}

struct ChatListCell: View {
    @State var unreadCount = 0
    var body: some View {
        ZStack {
            Color(unreadCount == 0 ? .clear : .white)
            NavigationLink(destination: ChatRoomView()){
                HStack {
                    Circle()
                        .frame(width: 48, height: 48)
                        .foregroundColor(.blue)
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Shalini Chopra")
                                .font(.system(size: 15))
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                            Spacer()
                            Text("12:01 PM")
                                .font(.system(size: 13))
                                .fontWeight(.medium)
                                .foregroundColor(.black)
                        }
                        VStack(alignment: .leading) {
                            Text("Primary Class Teacher - Maths")
                                .font(.system(size: 12))
                                .fontWeight(.regular)
                                .foregroundColor(.black)
                                .opacity(0.54)
                            Text("Good morning everyone. Hope you are having...")
                                .fontWeight(.regular)
                                .foregroundColor(.black)
                                .lineLimit(1)
                                .font(.system(size: 12))
                                .padding(.top,-4)
                        }
                    }
                    
                }
                .padding(16)
                .background(Color(.clear))
            }

            
        }
    }
}
