//
//  cointoss.swift
//  CPSC-411 Project
//
//  Created by csuftitan on 3/10/22.
//

import Foundation
import SwiftUI
struct WelcomeScreen: View {
var body: some View{
    
        Text("Welcome to our game")
            .font(.custom("Times New Roman", size: 40))
                       .foregroundColor(Color.black)
                       .padding(.bottom,30)
                       .background(Color.white)
                       .cornerRadius(10)
    Image("86")
}
}

struct toss: View{
@State var flipping = false
   @State var heads = false
   @State var intensity: Int = 0
   @State var tailscounting: Int = 0
   @State var headscounting: Int = 0
var body: some View{
    VStack{
        VStack{
            Text("Heads: \(headscounting)")
            Text("Tails: \(tailscounting)")
        }
        Spacer()
        Coin(Flipping: $flipping,Heads:$heads)
        Spacer()
        Button("Take your Chances"){
            FlipCoin()
        }
    }
}
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
        //WelcomeScreen()
        
}
struct Coin: View {
@Binding var Flipping:Bool
@Binding var Heads: Bool
var body: some View{
    ZStack{
        Circle()
            .foregroundColor(.blue)
            .frame(width:200, height:200)
        Circle()
            .foregroundColor(.purple)
            .frame(width: 150 , height: 150)
    }
}
 

}
}
    

