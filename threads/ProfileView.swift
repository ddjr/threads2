//
//  ProfileView.swift
//  threads
//
//  Created by David Daly on 7/20/23.
//

import SwiftUI

struct ProfileView: View {
    let spacing = 5.0

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                // 🎩 Settings bar
                settingsBar
                // 👨‍🚀 User name and image
                usernameAndImage
                // 👨‍🚀 Bio
                bio
                // 👨‍👩‍👧‍👦 Followers
                followers
                // 📝 Edit/Share Profile
                editAndShareButtons
            }
            .padding()
            
            // 🧵 Threads and replies
            threadsAndRepliesButtons
            // Threads feed
            ThreadView()
            Divider()
            ThreadView()
            Divider()
            ThreadView()
            Divider()
        }
    }
    
    @ViewBuilder private var settingsBar: some View {
        HStack {
            Image(systemName: "network")
            Spacer()
            Image(systemName: "camera")
            Image(systemName: "line.3.horizontal")
        }
        .padding(.bottom, spacing)
    }
    
    @ViewBuilder private var usernameAndImage: some View {
        HStack {
            VStack {
                Text("David Daly")
                    .font(.title2)
                    .bold()
                Text("thedaviddaly")
            }
            Spacer()
            Image(systemName: "person.circle")
                .font(.largeTitle)
        }
        .padding(.bottom, spacing)
    }
    
    @ViewBuilder private var bio: some View {
        Text("just a city boy 🫣 born and raised in south detoroit.. \ncoder at google \ntrain BJJ")
            .padding(.bottom, spacing)
    }
    
    @ViewBuilder private var followers: some View {
        HStack {
            Image(systemName: "person.circle")
            Text("34 followers")
        }
    }
    
    @ViewBuilder private var editAndShareButtons: some View {
        HStack {
            Text("Edit Profile")
                .onTapGesture {
                    // TODO:
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 5)
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.secondary, lineWidth: 1)
                }
            Text("Share Profile")
                .onTapGesture {
                    // TODO:
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 5)
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.secondary, lineWidth: 1)
                }
        }
    }
    
    @ViewBuilder private var threadsAndRepliesButtons: some View {
        VStack {
            HStack {
                Text("Threads")
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.black)
                Text("Replies")
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.gray)
            }
            Rectangle()
                .frame(height: 0.3)
                .foregroundColor(.gray)
                .overlay {
                    HStack {
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.black)
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.clear)
                    }
                }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
