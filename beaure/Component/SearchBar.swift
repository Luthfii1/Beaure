//
//  SearchBar.swift
//  beaure
//
//  Created by Luthfi Misbachul Munir on 03/04/24.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "magnifyingglass")
                
                Text("Search your product")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                
                Spacer()
            })
            .foregroundStyle(.black)
        }
        .padding(10)
        .background(Color("Neutral"))
        .overlay {
            Capsule()
                .stroke(lineWidth: 2)
                .foregroundStyle(Color(.systemGray4))
        }
        .padding(.horizontal,2)
        .padding(.bottom, 10)
        .shadow(color: Color("SecondaryBlue").opacity(0.9), radius: 6, x: 4, y: 4)
    }
}

#Preview {
    SearchBar()
}
