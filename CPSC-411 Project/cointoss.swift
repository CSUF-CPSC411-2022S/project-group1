//
//  cointoss.swift
//  CPSC-411 Project
//
//  Created by csuftitan on 3/25/22.
//
import SwiftUI
import Foundation
class Coin: ObservableObject {
    @Published var flipping = false
    @Published var heads = false
   @Published var intensity: Int = 0
    @Published var tailscounting: Int = 0
   @Published var headscounting: Int = 0
   func FlipCoin(){
        withAnimation{
            let randomNumber = Int.random(in:5...6)
            if intensity > 1800000000{
                restart()
            }
            intensity+=(randomNumber*180)
            HeadsTails()
            flipping.toggle()
        }
    }
    func HeadsTails(){
     let divided = intensity / 180
        (divided%2)==0 ? (heads=false):(heads=true)
        heads == true ? (headscounting += 1) : (tailscounting += 1)
    }
    func restart(){
       intensity = 0
    }
}
