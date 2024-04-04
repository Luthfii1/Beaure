//
//  CardProduct.swift
//  beaure
//
//  Created by Luthfi Misbachul Munir on 03/04/24.
//

import SwiftUI

struct CardProduct: View {
    @Environment(\.openURL) private var openURL
    var product: Product
    
    var body: some View {
        Button {
            if let url = URL(string: product.link) {
                openURL(url)
            }
        } label: {
            VStack (spacing: 0) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                VStack(alignment: .leading, content: {
                    Text(product.name)
                        .padding(.top, 10)
                        .bold()
                    
                    HStack (alignment: .top, content: {
                        Image(systemName: "mappin.and.ellipse")
                        Text(product.location)
                    })
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom, 5)
                    
                    Group {
                        Text("Rp \(product.beforePrice)")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                            .strikethrough()
                        Text("Rp \(product.afterPrice)")
                            .font(.headline)
                            .foregroundStyle(Color("PrimaryBlue"))
                    }
                    
                    Spacer()
                    
                    HStack(alignment: .center, content: {
                        Group {
                            HStack(spacing: 4) {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                    .font(.subheadline)
                                Text("\(String(format: "%.1f", product.star))")
                                    .font(.subheadline)
                            }
                            
                            Spacer()
                            
                            Text("\(String(format: "%.1f", product.sold))K sold")
                                .font(.subheadline)
                        }
                    })
                    .padding(.bottom, 10)
                })
                .padding(.horizontal, 10)
                .frame(width: 150, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: Color("SecondaryBlue").opacity(0.9), radius: 6, x: 6, y: 6)
        }
    }
}

#Preview {
    CardProduct(product: Product(name: "Product 1", image: "Product1", location: "Jakarta", beforePrice: 201000, afterPrice: 102000, star: 3.9, sold: 2.4, link: "https://shopee.co.id/3PCS-Paket-SKINTIFIC-3pcs-Paket-Skincare-with-toner-4D-Hyaluronic-Acid-(HA)-Barrier-Essence-Toner-5X-Ceramide-Barrier-Moisturize-Gel-10-Niacinamide-Brightening-Serum-20Ml-5-Aha-Bha-Pha-Exfoliating-Toner-5X-Ceramide-Soothing-Toner-80ml-i.358403693.19180781041?sp_atk=34f81991-480c-4458-a734-d0e2bdad478b&xptdk=34f81991-480c-4458-a734-d0e2bdad478b"))
}
