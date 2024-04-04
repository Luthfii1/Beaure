//
//  SearchView.swift
//  beaure
//
//  Created by Luthfi Misbachul Munir on 04/04/24.
//

import SwiftUI

struct SearchView: View {
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 0) {
                // Search Bar
                SearchBar()
                // End of Search Bar
                
                // Preference and Location
                HStack (alignment: .top) {
                    VStack {
                        CardTitleAction(title: "Change Your Preference", showAll: false)
                            .font(.caption)

                    }
                    VStack {
                        CardTitleAction(title: "You're Currently At", showAll: false)
                            .font(.caption)
                    }
                }
                // End of Preference and location
                
                // Scroll View
                ScrollView (showsIndicators: false) {
                    LazyVStack {
                        
                    }
                }
                // End of Scroll View
            }
            .background(Color("Neutral"))
        }
        .padding(.horizontal, 18)
        .background(Color("Neutral"))
    }
}

#Preview {
    SearchView()
}
