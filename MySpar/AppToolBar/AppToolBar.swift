//
//  AppToolBar.swift
//  MySpar
//
//  Created by Ashot Kirakosyan on 31.01.24.
//

import SwiftUI

struct ToolBarView: View {
    var body: some View {
        HStack(spacing: 20) {
            Button(action: {
                print("list")
            }, label: {
                Image(systemName: "doc.plaintext")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.green)
                    
            })
            
            Button(action: {
                print("share")
            }, label: {
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.green)
                    
            })
            
            Button(action: {
                print("fovorite")
            }, label: {
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.green)
                   
            })
        }
    }
}
