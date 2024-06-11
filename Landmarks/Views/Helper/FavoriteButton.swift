//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by HoangHaaii on 07/06/2024.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button{
            isSet.toggle()
        } label:{
            Label("Toggle favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
        
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
