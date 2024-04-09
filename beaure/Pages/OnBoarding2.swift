//
//  OnBoarding2.swift
//  beaure
//
//  Created by Fristania Verenita on 03/04/24.
//

import SwiftUI

struct OnBoarding2: View {
    var body: some View {
        VStack{
            Image("OB2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            Text("Choose Your Preference")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.vertical)
                
            Text("Your choices will help us tailor the best deals to suit your needs and interests. Let's find the perfect deals for you!")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.all)
            
            Image("OBS2")
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
    OnBoarding2()
}
