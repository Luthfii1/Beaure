//
//  HomeView.swift
//  beaure
//
//  Created by Luthfi Misbachul Munir on 02/04/24.
//

import SwiftUI

struct HomeView: View {
    var topDealsData: [Product]
    var store: [ECommerce]
    var compareProduct: [CompareProduct]
    
    init() {
        // Initialize topDealsData and store here after self is available
        self.topDealsData = topDealsDataDummy
        self.store = storeDataDummy
        self.compareProduct = compareProductDataDummy
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                VStack() { // Set spacing to 0 to remove padding between views
                    // ================= TOPBAR ==================
                    TopBar()
                    // ===========================================
                    
                    // ================= Seach Bar ===============
                    SearchBar()
                    // ===========================================
                }
                
                ScrollView (showsIndicators: false) {
                    LazyVStack(content: {
                        // ================= TOPDEALS ================
                        // Top Deals Title
                        CardTitleAction(title: "Top Deals")
                        // End of Top Deals Title
                        
                        // Top Deals Product
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(topDealsData) { product in
                                    CardProduct(product: product)
                                }
                            }
                            .padding(.bottom, 20)
                        }
                        // End of Top Deals Product
                        // ============================================
                        
                        // ================= STORE ====================
                        // E-commerce title
                        CardTitleAction(title: "E-Commerce", showAll: false)
                        // End of E-Commerce Title
                        
                        // Store
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20, content: {
                                ForEach(store) { store in
                                    CardEcommerce(store: store)
                                }
                            })
                            .padding(.bottom, 20)
                        }
                        // End of Store
                        // ===========================================
                        
                        // =============== SAVED COMPARISON ==========
                        // Saved Comparison Title
                        CardTitleAction(title: "Saved Comparison")
                        // End of Saved Comparison Title
                        
                        // Card Comparison
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20, content: {
                                ForEach(compareProduct) { compareProduct in
                                    SavedComparison(CompareProduct: compareProduct)
                                }
                            })
                            .padding(.bottom, 20)
                        }
                        // End of Card compariosn
                        // ===========================================
                    })
                }
                .background(Color("Neutral"))
            }
            .padding(.horizontal, 18)
            .background(Color("Neutral"))
        }
    }
}

#Preview {
    HomeView()
}
