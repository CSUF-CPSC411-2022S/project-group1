//
//  ContentView.swift
//  CPSC-411 Project
//
//  Created by Daniel Moran on 2/22/22.
//

import SwiftUI

/*struct ContentView: View {
    var body: some View {
        Text("What's in the box?!")
            .padding()
        Image("Box")
        Button("Open Box", action:{
            //print("")
            //Text
        }).modifier(ButtonDesign())
    }
}*/

struct MysteryBoxView: View {
    @State var box = MysteryBox()
    var body: some View {
        //@State var box = MysteryBox()
        VStack{
            Text("What's in the box?!")
                .font(.title)
                .padding()
            }
        Image("Box")
        Button("Open Box", action:{
            //print("")
            box.randomNumber()
        }).modifier(ButtonDesign())
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
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MysteryBoxView()
    }
}
