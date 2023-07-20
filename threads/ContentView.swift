//
//  ContentView.swift
//  threads
//
//  Created by David Daly on 7/19/23.
//

import SwiftUI

struct ContentView: View {
    @State var showNewThreadView: Bool = false
    @State var currentTab: String = "home"
    var body: some View {
        NavigationStack {
            if currentTab == "profile" {
                ProfileView()
            } else if currentTab == "search" {
                // TODO: add SearchView
            } else if currentTab == "activity" {
                // TODO: add ActivityView
            }
            else {
                HomePageView()
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
