//
//  OnBoarding3.swift
//  beaure
//
//  Created by Fristania Verenita on 03/04/24.
//

import SwiftUI

struct OnBoarding3: View {
    var body: some View {
        VStack{
            Image("OB3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            Text("Here Are Your Top Deals!")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.vertical)
                
            Text("Wow! We've found the best deals for you. Explore up to 5 top deals from various e-commerce platforms. Happy shopping!")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.all)
            
            Image("OBS3")
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
    OnBoarding3()
}
