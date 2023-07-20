//
//  TabsView.swift
//  threads
//
//  Created by David Daly on 7/19/23.
//

import SwiftUI

struct TabsView: View {
    @Binding var showNewThreadView: Bool
    @Binding var currentTab: String

    var body: some View {
        HStack {
            Tab(icon: "house")
                .onTapGesture {
                    currentTab = "home"
                }
            Spacer()
            Tab(icon: "magnifyingglass")
                .onTapGesture {
                    currentTab = "search"
                }
            Spacer()
            Tab(icon: "square.and.pencil")
                .onTapGesture {
                    showNewThreadView = true
                }
            Spacer()
            Tab(icon: "heart")
                .onTapGesture {
                    currentTab = "activity"
                }
            Spacer()
            Tab(icon: "person")
                .onTapGesture {
                    currentTab = "profile"
                }
        }
        .padding(.horizontal, 20.0)
        .padding(.vertical, 10.0)
    }
    
    @ViewBuilder func Tab(icon: String) -> some View {
        Image(systemName: icon)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(maxWidth: 24.0, maxHeight: 24.0)
            .fontWeight(.light)
    }
}


struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView(showNewThreadView: .constant(false), currentTab: .constant("profile"))
    }
}
