//
//  ThemeView.swift
//  Scrumdinger-SO
//
//  Created by Sergio Olivares on 3/25/22.
//

import SwiftUI

struct ThemeView: View {
    let theme : Theme
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(theme.mainColor)
            Label(theme.name, systemImage: "paintpalette")
        }
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: .buttercup)
    }
}
