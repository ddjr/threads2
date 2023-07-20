//
//  ThreadView.swift
//  threads
//
//  Created by David Daly on 7/19/23.
//

import SwiftUI

struct ThreadView: View {
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
                        Text("Ryanpineda")
                            .underline()
                        Spacer()
                        Text("37m")
                        Image(systemName: "ellipsis")
                    }
                    
                    Text("Don't be the successful person who ignores their health and family to chase money.")
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
                Text("19 replies")
                    .underline()
                Text("•")
                Text("773 likes")
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
    static var previews: some View {
        ThreadView()
    }
}
