//
//  HomePageView.swift
//  threads
//
//  Created by David Daly on 7/20/23.
//

import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreSwift

class HomePageViewModel: ObservableObject {
    @Published var threads: [Thread] = []
    
    func getThreads() {
        let database = Firestore.firestore()
        database.collection("users")
            .document("sbVaTYrKiEWhhICxs7GZ")
            .collection("threads")
            .getDocuments { querySnapshot, err in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    for document in querySnapshot!.documents {
                        let data = document.data()
                        let newThread = Thread(
                            id: data["id"] as? String ?? "",
                            handle: data["handle"] as? String ?? "",
                            text: data["text"] as? String ?? "",
                            likes: data["likes"] as? [String] ?? [],
                            replies: data["replies"] as? [String] ?? [],
                            createdAt: data["createdAt"] as? TimeInterval ?? 0
                        )
                        
                        self.threads.append(newThread)
                        print(self.threads)
                    }
                }
        }
    }
}
struct HomePageView: View {
    @StateObject var viewModel = HomePageViewModel()

    
    var body: some View {
        ScrollView {
            ForEach($viewModel.threads, id: \.id) { $thread in
                ThreadView(thread: $thread)
            }
            
        }
        .scrollIndicators(.hidden)
        .onAppear {
            viewModel.getThreads()
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
