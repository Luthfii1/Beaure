//
//  On Boarding 1.swift
//  beaure
//
//  Created by Fristania Verenita on 03/04/24.
//

import SwiftUI

struct On_Boarding_1: View {
    var body: some View {
        VStack{
            Image("OB1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            Text("Welcome to Beaure")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.vertical)
                
            Text("Discover the best deals from multiple e-commerce platforms in one place. Get ready to save time and money with Beaure.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.all)
            
            Image("OBS1")
                .padding(.vertical)
            
            HStack{
                Button(action: {
                    
                }) {
                    Text("Skip")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color("PrimaryBlue"))
                        .padding(.horizontal, 16)
                        .padding(.vertical, 16)
                }
                .border(Color("PrimaryBlue"))
                .padding()
                .padding()
                
                Button(action: {
                    
                }) {
                    Text("Next")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 16)
                        .background(Color("PrimaryBlue"))
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                .padding()
            }
        }
    }
}

#Preview {
    On_Boarding_1()
}
