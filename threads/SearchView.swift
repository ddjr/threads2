//
//  SearchView.swift
//  threads
//
//  Created by David Daly on 7/20/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ScrollView {
            // 🕵️‍♂️ Search bar
            SearchBarView()
            ActivityItemView()
            Divider()
            ActivityItemView()
            Divider()
            ActivityItemView()
            Divider()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
