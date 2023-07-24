//
//  CustomFont.swift
//  Threads
//
//  Created by Skander Blaiti on 9/7/2023.
//

import SwiftUI

struct CustomFont: ViewModifier {
    var textStyle: TextStyle
    
    // Font Name
    var name: String {
        switch textStyle {
        case .title, .title2, .title3, .largeTitle:
            return "AvertaStd-Bold"
        case .headline:
            return "AvertaStd-Semibold"
        case .body, .subheadline, .footnote, .caption:
            return "AvertaStd-Regular"
        }
    }
    
    // Font Size
    var size: CGFloat {
        switch textStyle {
        case .largeTitle:
            return 34
        case .title:
            return 28
        case .title2:
            return 22
        case .title3:
            return 20
        case .body, .headline:
            return 17
        case .subheadline:
            return 15
        case .footnote:
            return 13
        case .caption:
            return 11
        }
    }
    
    // Font Relative To
        var relative: Font.TextStyle {
            switch textStyle {
            case .largeTitle:
                return .largeTitle
            case .title:
                return .title
            case .title2:
                return .title2
            case .title3:
                return .title3
            case .body:
                return .body
            case .headline:
                return .headline
            case .subheadline:
                return .subheadline
            case .footnote:
                return .footnote
            case .caption:
                return .caption
            }
        }
    
    func body(content: Content) -> some View {
        content.font(.custom(name, size: size, relativeTo: relative))
    }
}

extension View {
    func customFont(_ textStyle: TextStyle) -> some View {
        modifier(CustomFont(textStyle: textStyle))
    }
}

enum TextStyle {
    case largeTitle
    case title
    case title2
    case title3
    case body
    case headline
    case subheadline
    case footnote
    case caption
}
