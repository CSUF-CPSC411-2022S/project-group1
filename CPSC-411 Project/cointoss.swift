
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
   @AppStorage("intensity") var intensity: Int = 0
    @AppStorage("tailsCounting") var tailsCounting: Int = 0
   @AppStorage("headsCounting") var headsCounting: Int = 0
   func FlipCoin(){
        withAnimation{
            let randomNumber = Int.random(in:7...8)
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
        heads == true ? (headsCounting += 1) : (tailsCounting += 1)
    }
    func restart(){
       intensity = 0
    }
}

class Texting: ObservableObject{
    @Published var text: String = UserDefaults.standard.string(forKey: "TEXT_KEY") ?? ""
    @Published var text2: String = UserDefaults.standard.string(forKey: "TEXT_KEY") ?? ""
    @Published var inputText: String = ""
    @Published var inputText2: String = ""
}
    

