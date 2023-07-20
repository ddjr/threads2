//
//  ActivityView.swift
//  threads
//
//  Created by David Daly on 7/20/23.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        ScrollView {
            ActivityBarView
            ActivityItemView()
            ActivityItemView()
            ActivityItemView()
            ActivityItemView()
            ActivityItemView()
        }
    }
    @ViewBuilder var ActivityBarView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Text("All")
                    .onTapGesture {
                        // TODO:
                    }
                    .padding(.horizontal, 25)
                    .padding(.vertical, 5)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(5)
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color(uiColor: .systemGray3), lineWidth: 1)
                    }
                Text("Replies")
                    .onTapGesture {
                        // TODO:
                    }
                    .padding(.horizontal, 25)
                    .padding(.vertical, 5)
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color(uiColor: .systemGray3), lineWidth: 1)
                    }
                Text("Mentions")
                    .onTapGesture {
                        // TODO:
                    }
                    .padding(.horizontal, 25)
                    .padding(.vertical, 5)
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color(uiColor: .systemGray3), lineWidth: 1)
                    }
                Text("Verifed")
                    .onTapGesture {
                        // TODO:
                    }
                    .padding(.horizontal, 25)
                    .padding(.vertical, 5)
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color(uiColor: .systemGray3), lineWidth: 1)
                    }
            }
        }
        .padding(.leading)
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
