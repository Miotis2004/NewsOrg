//
//  ButtonView.swift
//  NewsOrg
//
//  Created by Field Employee on 11/17/20.
//

import SwiftUI

struct ButtonView: View {
    
    var buttonName: String
    
    
    var body: some View {
        
        Text(buttonName)
            .fontWeight(.bold)
            .font(.caption)
            .padding()
            .background(Color.purple)
            .cornerRadius(40)
            .foregroundColor(.white)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.purple, lineWidth: 5)
            )
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonName: "Headlines")
            .previewLayout(.sizeThatFits)
    }
}
