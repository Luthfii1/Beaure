//
//  HomeView.swift
//  beaure
//
//  Created by Luthfi Misbachul Munir on 02/04/24.
//

import SwiftUI

struct HomeView: View {
    var topDealsData: [Product] = [
        Product(name: "Skintific Moist 6g", image: "Product1", location: "Jakarta Selatan", beforePrice: 299000, afterPrice: 50000, star: 4.8, sold: 10),
        Product(name: "SKINTIFIC 5X Ceramide Barrier Moisturizer Gel-30g - Rainbow", image: "Product2", location: "Jakarta Timur", beforePrice: 103000, afterPrice: 23000, star: 4.2, sold: 8.2),
        Product(name: "Skintific Msh Niacinamide Brightening Moist. 30 Gr", image: "Product3", location: "BSD", beforePrice: 299000, afterPrice: 50000, star: 3.9, sold: 9.4),
        Product(name: "SKINTIFIC | Skintific Series", image: "Product4", location: "Tangerang Selatan", beforePrice: 42000, afterPrice: 21000, star: 4.7, sold: 3.5),
        Product(name: "Skintific Repair Barrier Set Perawatan Kulit Kusam", image: "Product5", location: "Bogor", beforePrice: 320000, afterPrice: 120000, star: 5, sold: 10)
    ]
    
    var store: [ECommerce] = [
        ECommerce(name: "Shopee", image: "shopee", voucher: 20),
        ECommerce(name: "Tokopedia", image: "tokopedia", voucher: 12),
        ECommerce(name: "Tiktop Shop", image: "tiktokshop", voucher: 10),
        ECommerce(name: "Sociolla", image: "sociolla", voucher: 24)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(content: {
                    // ================= TOPBAR ==================
                    TopBar()
                    // ===========================================
                    
                    // ================= Seach Bar ===============
                    
                    // ===========================================
                    
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
                        HStack(spacing: 10, content: {
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
                    
                    // End of Card compariosn
                    // ===========================================
                })
            }
            .background(Color("Neutral"))
        }
        .padding()
        .background(Color("Neutral"))
    }
}

#Preview {
    HomeView()
}
