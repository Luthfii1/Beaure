//
//  ComparisonProduct.swift
//  beaure
//
//  Created by Luthfi Misbachul Munir on 03/04/24.
//

import SwiftUI

struct ComparisonProduct: View {
    var CompareSingleProduct : CompareSingleProduct
    
    var body: some View {
        VStack (alignment: .leading ,spacing: 0) {
            Image(CompareSingleProduct.image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading, content: {
                Text(CompareSingleProduct.name)
                    .foregroundStyle(.black)
                    .bold()
                    .font(.body)
                
                Text("Rp \(CompareSingleProduct.price)")
                    .font(.callout)
                    .foregroundStyle(Color("PrimaryBlue"))
            })
//            .padding(.horizontal, 8)
            .padding(.vertical, 20)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
//        .background(.white)
    }
}

#Preview {
    ComparisonProduct(CompareSingleProduct: CompareSingleProduct(image: "Product1", name: "Skintific 5X Ceramide", price: 142000))
}
