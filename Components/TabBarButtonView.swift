//
//  TabBarButtonView.swift
//  Threads
//
//  Created by Skander Blaiti on 24/7/2023.
//

import SwiftUI

struct TabBarButtonView: View {
    let text: String
    @Binding var isSelected: Bool
    
    var body: some View {
        Text(text)
            .customFont(.title2)
            .padding(20)
            .frame(maxWidth: .infinity)
            .overlay(Rectangle().frame(width: nil, height: isSelected == true ? 3 : 1, alignment: .bottom).foregroundColor(Color(isSelected == true ? "Text" : "Gray")), alignment: .bottom)
    }
}

struct TabBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButtonView(text: "Threads", isSelected: .constant(true))
    }
}
