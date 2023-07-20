//
//  ActivityItemView.swift
//  threads
//
//  Created by David Daly on 7/20/23.
//

import SwiftUI

struct ActivityItemView: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "person.circle")
                .font(.largeTitle)
            VStack(alignment: .leading) {
                Text("washingtonpost")
                    .bold()
                Text("The Washington Post")
                HStack {     
                    Image(systemName: "person.circle")
                    Text("12 followers")
                }
                
            }
            Spacer()
            Text("Follow")
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
        .padding()
        
    }
}

struct ActivityItemView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityItemView()
    }
}
