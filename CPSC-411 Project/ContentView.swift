//
//  ContentView.swift
//  CPSC-411 Project
//
//  Created by Daniel Moran on 2/22/22.
//
import SwiftUI


struct ContentView: View {

    var body: some View {

        
            

        NavigationView {
            ZStack {
                Color.red.ignoresSafeArea()
                Circle()
                    .scale(1.5)
                    .foregroundColor(.white)
                VStack {
                    Text("Welcome to Decision Maker").font(.title).padding()
                    Spacer()
                    HStack (alignment: .center) {
                        NavigationLink(destination: DicerollView()) {
                            Text("Dice Roll").modifier(ButtonDesign())
                        }
                        NavigationLink(destination: toss(test: Coin())) {
                            Text("Coin Flip").modifier(ButtonDesign())
                        }
                        NavigationLink(destination: EmptyView()) {
                            Text("Mystery Box").modifier(ButtonDesign())
                        }
                    }
                    Spacer()
                    NavigationLink(destination: LoginView()){
                        Text("Login").modifier(ButtonDesign()).padding()
                    }
                }
            }.navigationBarHidden(true)
        }
    }
}

struct LoginView: View {
    @State private var Usrname = ""
    @State private var Password = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.mint.ignoresSafeArea()
                Circle()
                    .scale(1.5)
                    .foregroundColor(.white)
                VStack {
                    Text("Login").font(.largeTitle).bold().padding()
                    TextField("UserName", text: $Usrname).modifier(CredentialsBox())
                    SecureField("Password", text: $Password).modifier(CredentialsBox())
                    
                    Button(action: {}, label: {
                        Text("Sign In").modifier(LoginButton()).padding()
                    })
                        
                }
            }
            .navigationBarHidden(true)
        }

    }
}

struct DicerollView: View {
    @State var Foodpalce: String = ""
    @State var Manager = DiceRollManager()
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Welcome to Dice Roll").font(.title).padding()
                    Spacer()
                    TextField("Enter food Option", text: $Foodpalce)
                    Button(action: {
                        Manager.AddOption(Foodpalce)
                    }, label: {
                        Text("add food place").padding()
                    })
                    Spacer()
                }
            }
            .navigationBarHidden(true)
            
        }

    }
    
}

struct EmptyView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Welcome").font(.title).padding()
                    Spacer()
                }
            }
            .navigationBarHidden(true)
            
        }
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
    @ObservedObject var test: Coin
    /*
    @State var flipping = false
     @State var heads = false
    
     @State var intensity: Int = 0
     @State var tailscounting: Int = 0
     @State var headscounting: Int = 0*/
    
    var body: some View{
        VStack{
            VStack{
                Text("Heads: \(test.headscounting)")
                Text("Tails: \(test.tailscounting)")
            }
            Spacer()
            Coining(Flipping: self.$test.flipping,Heads:self.$test.heads)
            Spacer()
            Button("Take your Chances"){
                test.FlipCoin()
            }
        }
    }
}
    /*
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
    }*/
            //WelcomeScreen()
            

struct Coining: View {
    @Binding var Flipping:Bool
    @Binding var Heads: Bool
    var body: some View{
        ZStack{
            Image("heads")
                .clipShape(Circle())
                .foregroundColor(.blue)
                .frame(width:200, height:200)
            Image("tails")
                .clipShape(Circle())
                .foregroundColor(.purple)
                .frame(width: 180 , height: 180)
        }
    }
     
    
}

