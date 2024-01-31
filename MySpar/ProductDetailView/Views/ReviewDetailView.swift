//
//  ReviewDetailView.swift
//  MySpar
//
//  Created by Ashot Kirakosyan on 31.01.24.
//

import SwiftUI

struct ReviewDetailView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Александр В.")
                .bold()
            Text("7 мая 2021")
                .foregroundColor(.gray)
            HStack {
                ForEach(0..<5) { index in
                    if index == 4 {
                        Image(systemName: "star.fill")
                            .foregroundColor(.gray.opacity(0.4))
                    } else {
                        Image(systemName: "star.fill")
                            .foregroundColor(.orange)
                    }
                        
                }
            }
            Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими! ")
            
        }
        .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 2)
            .frame(width: 300)
    }
}

#Preview {
    ReviewDetailView()
}
