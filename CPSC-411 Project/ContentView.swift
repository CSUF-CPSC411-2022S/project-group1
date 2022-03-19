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
                        NavigationLink(destination: EmptyView()) {
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
}

