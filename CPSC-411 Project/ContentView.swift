//
//  ContentView.swift
//  CPSC-411 Project
//
//  Created by Daniel Moran on 2/22/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        toss()
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
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
        
    }
    func HeadsTails(){
        
    }
    func restart(){
        
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
