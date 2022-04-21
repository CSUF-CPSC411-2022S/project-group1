//
//  modifers.swift
//  CPSC-411 Project
//
//  Created by Daniel Moran on 3/8/22.
//

import Foundation
import SwiftUI

struct CredentialsBox: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(width: 315, height: 50)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
    }
}

struct RoundedBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(10)
            .background(Color.blue)
            .cornerRadius(10)
            .padding(10)
    }
}


struct ButtonDesign: ViewModifier {
    func body(content: Content) -> some View {
        content
            .modifier(RoundedBackground())
            .foregroundColor(Color.white)
    }
}

struct LoginButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .frame(width: 250, height: 50)
            .background(Color.blue)
            .cornerRadius(10)
    }
    
}

struct imageView: ViewModifier{
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: 400)
            .clipShape(Rectangle())
                .overlay(Rectangle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(.black))
            .shadow(radius: 5)
    }
}

