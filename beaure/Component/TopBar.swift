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
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "map")
                    Text("Jakarta")
                })
                .foregroundStyle(.black)
            })
            .padding(.horizontal ,10)
            .padding(.vertical, 5)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("PrimaryBlue"), lineWidth: 4)
                    .background(Color.white) // Set the background color to white
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
            )
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Spacer()
            
            Group {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bookmark")
                        .foregroundStyle(.black)
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                        .foregroundStyle(.black)
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bell")
                        .foregroundStyle(.black)
                })
            }
        })
        .padding(.bottom, 10)
    }
}

#Preview {
    TopBar()
}
