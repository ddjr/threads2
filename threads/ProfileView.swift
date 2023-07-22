//
//  ProfileView.swift
//  threads
//
//  Created by David Daly on 7/20/23.
//

import SwiftUI
import FirebaseFirestore

class ProfileViewModel: ObservableObject {
    private let userId = "sbVaTYrKiEWhhICxs7GZ"
    @Published var user: User? = nil
    
    func getUser() {
        let database = Firestore.firestore()
        database.collection("users")
            .document(userId)
            .getDocument { [weak self] snapshot, error in
                guard let data = snapshot?.data(), error == nil
                else { return }
                DispatchQueue.main.async {
                    self?.user = User (
                        name: data["name"] as? String ?? "",
                        handle: data["handle"] as? String ?? "",
                        bio: data["bio"] as? String ?? "",
                        profilePic: data["profilePic"] as? String ?? "",
                        followers: data["followers"] as? [String] ?? [],
                        following: data["following"] as? [String] ?? []
                    )
                }
            }
    }
}
struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    let spacing = 5.0
    
    var body: some View {
            ScrollView {
                if let user = viewModel.user {
                VStack(alignment: .leading) {
                    // 🎩 Settings bar
                    settingsBar
                    // 👨‍🚀 User name and image
                    usernameAndImage(
                        name: user.name,
                        handle: user.handle,
                        image: user.profilePic
                    )
                    // 👨‍🚀 Bio
                    bio(bio: user.bio)
                    // 👨‍👩‍👧‍👦 Followers
                    followers(followerCount: user.followers.count)
                    // 📝 Edit/Share Profile
                    editAndShareButtons
                }
                .padding()
                
                // 🧵 Threads and replies
                threadsAndRepliesButtons
                // Threads feed
//                ThreadView()
//                Divider()
//                ThreadView()
//                Divider()
//                ThreadView()
//                Divider()
            } else {
                Text("Loading Profile...")
            }
        }
        .onAppear {
            viewModel.getUser()
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
    
    @ViewBuilder private func usernameAndImage(name: String, handle: String, image: String) -> some View {
        HStack {
            VStack {
                Text(name)
                    .font(.title2)
                    .bold()
                Text(handle)
            }
            Spacer()
            Image(systemName: "person.circle")
                .font(.largeTitle)
        }
        .padding(.bottom, spacing)
    }
    
    @ViewBuilder private func bio(bio: String) -> some View {
        Text(bio)
            .padding(.bottom, spacing)
    }
    
    @ViewBuilder private func followers(followerCount: Int) -> some View {
        HStack {
            Image(systemName: "person.circle")
            Text("\(followerCount) followers")
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
