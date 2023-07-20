//
//  NewThreadSheetView.swift
//  threads
//
//  Created by David Daly on 7/19/23.
//

import SwiftUI

struct NewThreadSheetView: View {
    @Binding var showNewThreadView: Bool
    @State var threadText: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                writeThread(threadText: $threadText)
                Spacer()
                NewThreadFooter
            }
            .padding()
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

    @ViewBuilder func writeThread(threadText: Binding<String>) -> some View {
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
                
            }
        }
    }
}


struct NewThreadSheetView_Previews: PreviewProvider {
    static var previews: some View {
        NewThreadSheetView(showNewThreadView: .constant(true))
    }
}
