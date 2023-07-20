//
//  SearchBarView.swift
//  threads
//
//  Created by David Daly on 7/20/23.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        // 🕵️‍♂️ Search bar
        HStack {
            Image(systemName: "magnifyingglass")
            Text("Search")
            Spacer()
        }
        .foregroundColor(Color(uiColor: .secondaryLabel))
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background(Color(uiColor: .systemGray5))
        .cornerRadius(6)
        .padding(.horizontal)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
