//
//  SearchBar.swift
//  beaure
//
//  Created by Luthfi Misbachul Munir on 03/04/24.
//

import SwiftUI

struct SearchBar: View {
    let names = ["Holly", "Josh", "Rhonda", "Ted"]
    var pressed : Bool = false
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            if pressed {
                List {
                    ForEach(searchResults, id: \.self) { name in
                        NavigationLink {
                            Text(name)
                        } label: {
                            Text(name)
                        }
                    }
                }
            }
        }
        .searchable(text: $searchText)
    }
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText) }
        }
    }
}

#Preview {
    SearchBar()
}
