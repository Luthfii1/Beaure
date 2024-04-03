//
//  TopBar.swift
//  beaure
//
//  Created by Luthfi Misbachul Munir on 02/04/24.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        HStack(content: {
            HStack(content: {
                Image(systemName: "map")
                Text("Jakarta")
            })
            .padding(.horizontal ,10)
            .padding(.vertical, 5)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("SecondaryBlue"), lineWidth: 4)
            )
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Spacer()
            
            Group {
                Image(systemName: "bookmark")
                Image(systemName: "heart")
                Image(systemName: "bell")
            }
        })
        .padding(.bottom, 10)
    }
}

#Preview {
    TopBar()
}
