//
//  OnBoarding4.swift
//  beaure
//
//  Created by Fristania Verenita on 03/04/24.
//

import SwiftUI

struct OnBoarding4: View {
    var body: some View {
        VStack{
            Image("OB4")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            Text("Compare Your Top Picks")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.vertical)
                
            Text("Easily evaluate product features, prices, and more to make the best decision side by side with split view.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.all)
            
            Image("OBS4")
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
    OnBoarding4()
}

