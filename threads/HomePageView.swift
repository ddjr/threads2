//
//  HomePageView.swift
//  threads
//
//  Created by David Daly on 7/20/23.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        ScrollView {
            ThreadView()
            Divider()
            ThreadView()
            Divider()
            ThreadView()
            Divider()
            ThreadView()
            Divider()
            ThreadView()
        }
        .scrollIndicators(.hidden)
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
