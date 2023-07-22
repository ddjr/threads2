//
//  ThreadView.swift
//  threads
//
//  Created by David Daly on 7/19/23.
//

import SwiftUI

struct ThreadView: View {
    @Binding var thread: Thread
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                // 🪡 Thread Line
                VStack {
                    // TODO: Replace with image
                    Image(systemName: "person.circle")
                        .font(.largeTitle)
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 1)
                }
                // 📝 Thread Body
                VStack{
                    HStack {
                        Text(thread.handle)
                            .underline()
                        Spacer()
                        Text("37m")
                        Image(systemName: "ellipsis")
                    }
                    
                    Text(thread.text)
                        .padding(.bottom, 1)
                    HStack {
                        Image(systemName: "heart")
                        Image(systemName: "message")
                        Image(systemName: "arrow.2.squarepath")
                        Image(systemName: "paperplane")
                        Spacer()
                    }
                }
            }
            HStack {
                // TODO: replace with user image
                Image(systemName: "person.circle")
                Text("\(thread.replies.count) replies")
                    .underline()
                Text("•")
                Text("\(thread.likes.count) likes")
                    .underline()
                Spacer()
            }
            .foregroundColor(.gray)
            .padding(.horizontal, 10)
        }
        .padding(.horizontal)
        .padding(.vertical, 15)
    }
}

struct ThreadView_Previews: PreviewProvider {
    static var thread = Thread(id: "12324453", handle: "thedaviddaly", text: "This is a text", likes: ["asdfasd","asdfasd"], replies: ["asdfasd","asdfasd","asdfasd","asdfasd"], createdAt: 0)
    static var previews: some View {
        ThreadView(thread: .constant(thread))
    }
}
