//
//  CardTitleAction.swift
//  beaure
//
//  Created by Luthfi Misbachul Munir on 02/04/24.
//

import SwiftUI

struct CardTitleAction: View {
    var title: String
    var showAll: Bool = true
    
    var body: some View {
        HStack {
            Text(title)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            if showAll {
                Text("Show All")
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    CardTitleAction(title: "Top Deals")
}
