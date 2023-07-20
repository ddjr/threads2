//
//  ButtonWithBorderView.swift
//  threads
//
//  Created by David Daly on 7/20/23.
//

import SwiftUI

struct ButtonWithBorderView: View {
    @State var text: String
    var body: some View {
        Text(text)
            .padding(.vertical, 5)
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(.secondary, lineWidth: 1)
            }
    }
}

struct ButtonWithBorderView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithBorderView(text: "Share Profile")
    }
}
