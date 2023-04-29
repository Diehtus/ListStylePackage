//
//  OptionalListStyle.swift
//
//  Created by Dustin Weise on 29.04.23.
//

import SwiftUI

/// Modifier so set the style for lists if not nil.
@available(iOS 13.0, *)
struct OptionalListStyle<Style: ListStyle>: ViewModifier {
    
    let listStyle: Style?
    
    func body(content: Content) -> some View {
        if let listStyle {
            content
                .listStyle(listStyle)
        } else {
            content
        }
    }
}

@available(iOS 13.0, *)
public extension View {

    /// Sets the style for lists if not nil.
    func listStyle<Style: ListStyle>(optionalListStyle: Style?) -> some View {
        modifier(OptionalListStyle(listStyle: optionalListStyle))
    }
}
