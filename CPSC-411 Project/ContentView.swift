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
            VStack {
                Text("Welcome to Random Games").font(.title).padding()
                Spacer()
            HStack {
                NavigationLink(destination: DicerollView()) {
                    Text("Dice Roll").modifier(ButtonDesign())
                }
                NavigationLink(destination: DicerollView()) {
                    Text("Coin Flip").modifier(ButtonDesign())
                }
                NavigationLink(destination: DicerollView()) {
                    Text("Mystery Box").modifier(ButtonDesign())
                }
            }
            Spacer()
            }
        }.navigationBarHidden(true)

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
    @StateObject var dice = DiceRoll()
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Welcome to Dice Roll").font(.title).padding()
                    Spacer()
                    
                }
            }
            
        }
    }
    
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

