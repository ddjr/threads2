//
//  NewThreadSheetView.swift
//  threads
//
//  Created by David Daly on 7/19/23.
//

import SwiftUI
import FirebaseFirestore

class newThreadSheetViewModel: ObservableObject {
    @Published var threadText: String = ""
    
    init() {}
    
    func post() {
        let id = UUID().uuidString
        let database = Firestore.firestore()
        database.collection("users")
            .document("sbVaTYrKiEWhhICxs7GZ")
            .collection("threads")
            .document(id)
            .setData([
                "id": UUID().uuidString,
                "text": threadText,
                "likes": [] as [String],
                "replies": [] as [String],
                "createdAt": Date().timeIntervalSince1970
            ])
    }
}

struct NewThreadSheetView: View {
    @StateObject var viewModel = newThreadSheetViewModel()
    @Binding var showNewThreadView: Bool
    var body: some View {
        NavigationStack {
            VStack {
                NewThreadBody(threadText: $viewModel.threadText)
                Spacer()
                NewThreadFooter
            }
            .padding(20)
            .toolbar {
                ToolbarItem(placement: .cancellationAction)  {
                    Text("Cancel")
                        .underline()
                        .onTapGesture {
                            showNewThreadView = false
                        }
                }
                ToolbarItem(placement: .principal)  {
                    Text("New thread")
                        .bold()
                        
                }
            }
        }
    }

    @ViewBuilder func NewThreadBody(threadText: Binding<String>) -> some View {
        VStack {
            VStack {
                HStack(alignment: .top) {
                    VStack {
                        Image(systemName: "person.circle")
                            .font(.largeTitle)
                        Rectangle()
                            .frame(width: 1, height: 60)
                            .foregroundColor(.gray)
                    }
                    VStack(alignment: .leading) {
                        Text("thedaviddaly")
                            .underline()
                        TextField("Start a thread...", text: threadText)
                            .textFieldStyle(DefaultTextFieldStyle())
                        Image(systemName: "paperclip")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
                HStack {
                    Image(systemName: "person.circle")
                    Text("Add to thread")
                        .underline()
                        .foregroundColor(.gray)
                    Spacer()
                }
                .offset(x: 11)
            }
        }
    }
    @ViewBuilder var NewThreadFooter: some View {
        HStack {
            Text("Anyone can reply")
                .underline()
                .foregroundColor(.gray)
            Spacer()
            Button("Post") {
                viewModel.post()
                showNewThreadView = false
            }
        }
    }
}


struct NewThreadSheetView_Previews: PreviewProvider {
    static var previews: some View {
        NewThreadSheetView(showNewThreadView: .constant(true))
    }
}
