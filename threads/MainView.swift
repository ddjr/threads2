//
//  ContentView.swift
//  threads
// add comment
//  Created by David Daly on 7/19/23.
//

import SwiftUI

struct MainView: View {
    @State var showNewThreadView: Bool = false
    @State var currentTab: String = "home"

    var body: some View {
        NavigationStack {
            if currentTab == "profile" {
                ProfileView()
                    .navigationTitle("")
            } else if currentTab == "search" {
                SearchView()
                    .navigationTitle("Search")
            } else if currentTab == "activity" {
                ActivityView()
                    .navigationTitle("Activity")
            }
            else {
                HomePageView()
                    .navigationTitle("")
            }
            // On every page show tabs at the bottom
            TabsView(showNewThreadView: $showNewThreadView, currentTab: $currentTab)
        }
        // New thread page pops up as a sheet
        .sheet(isPresented: $showNewThreadView) {
            NewThreadSheetView(showNewThreadView: $showNewThreadView)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
