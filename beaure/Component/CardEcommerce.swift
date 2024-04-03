//
//  CardEcommerce.swift
//  beaure
//
//  Created by Luthfi Misbachul Munir on 03/04/24.
//

import SwiftUI

struct CardEcommerce: View {
    var store: ECommerce
    
    var body: some View {
        VStack (spacing: 0) {
            Image(store.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .background(Color.white)
                .frame(width: 100, height: 100)
                .clipShape(Circle())

            
            Group{
                Text(store.name)
                    .padding(.top, 10)
                    .bold()
                
                Text("\(store.voucher) vouchers")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: Color("SecondaryBlue").opacity(0.9), radius: 10, x: 6, y: 6)
    }
    
}

#Preview {
    CardEcommerce(store: ECommerce(name: "Tokopedia", image: "tokopedia", voucher: 13))
}
