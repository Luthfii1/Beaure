//
//  SavedComparison.swift
//  beaure
//
//  Created by Luthfi Misbachul Munir on 03/04/24.
//

import SwiftUI

struct SavedComparison: View {
    var CompareProduct : CompareProduct
    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        return dateFormatter.string(from: CompareProduct.Date)
    }
    
    var body: some View {
        VStack(alignment: .leading, content: {
            HStack(alignment: .center, content: {
                //                Product 1
                ComparisonProduct(CompareSingleProduct: CompareProduct.Product1)
                
                Image("Vs")
                
                //                PRODUCT 2
                ComparisonProduct(CompareSingleProduct: CompareProduct.Product2)
            })
            
            Text("Saved on \(formattedDate)")
                .font(.caption)
                .foregroundStyle(.gray)
        })
        .frame(width: 270, height: 230)
        .padding()
        .background(Color("SoftPurple"))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    SavedComparison(CompareProduct:
                        CompareProduct(
                            Product1: CompareSingleProduct(image: "Product1", name: "Skintific Ceramide Shopee", price: 124000), 
                            Product2: CompareSingleProduct(image: "Product2", name: "Skintific Tokped Ceramide", price: 134000),
                            Date: Date() )
    )
}
