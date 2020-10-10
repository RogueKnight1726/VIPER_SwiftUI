////
////  ContentView.swift
////  ChatVIPERSwiftUI
////
////  Created by Swathy Sudarsanan on 09/10/20.
////
//
//import SwiftUI
//
//struct ContentView: View {
//
//    init(){
//        UINavigationBar.appearance().backgroundColor = .clear
//    }
//
//    var body: some View {
//        ZStack {
//            Rectangle().foregroundColor(.red)
//            NavigationView{
//                ScrollView(.vertical) {
//                    LazyVStack(spacing: 0) {
//                        ChatListCell(unreadCount: 1)
//                        ForEach(0..<20) { item in
//                            ChatListCell(unreadCount: 0)
//                        }
//                    }
//                }
//                .navigationTitle("Chat")
//                .navigationBarItems(
//                    trailing:
//                        Image(systemName: "square.and.pencil")
//                        .foregroundColor(.accentColor)
//                )
//                .background(Color(#colorLiteral(red: 0.9596566558, green: 0.9596566558, blue: 0.9596566558, alpha: 1)))
//            }
//
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//            .preferredColorScheme(.light)
//    }
//}
//
//struct ChatListCell: View {
//    @State var unreadCount = 0
//    var body: some View {
//        ZStack {
//            Color(unreadCount == 0 ? .clear : .white)
//            HStack {
//                Circle()
//                    .frame(width: 48, height: 48)
//                VStack(alignment: .leading) {
//                    HStack {
//                        Text("Shalini Chopra")
//                            .font(.system(size: 15))
//                            .fontWeight(.semibold)
//                        Spacer()
//                        Text("12:01 PM")
//                            .font(.system(size: 13))
//                            .fontWeight(.medium)
//                    }
//                    VStack(alignment: .leading) {
//                        Text("Primary Class Teacher - Maths")
//                            .font(.system(size: 12))
//                            .fontWeight(.regular)
//                            .opacity(0.54)
//                        Text("Good morning everyone. Hope you are having...")
//                            .fontWeight(.regular)
//                            .lineLimit(1)
//                            .font(.system(size: 12))
//                            .padding(.top,-4)
//                    }
//                }
//
//            }
//            .padding(16)
//            .background(Color(.clear))
//        }
//    }
//}
