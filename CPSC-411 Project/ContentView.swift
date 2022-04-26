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
                        NavigationLink(destination: toss(texting: Texting(), test: Coin())) {

                                                    NavigationLink(destination: WelcomeScreen()) {

                                                    Text("Coin Flip").modifier(ButtonDesign())
                                                                                              }
                                                }
                        NavigationLink(destination: MysteryBoxView()) {
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
    @SceneStorage("Foodplace") var Foodplace: String = ""
    @State var num: Int = 1
    @StateObject var Manager = DiceRollManager()
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Welcome to Dice Roll").font(.title).padding()
                    Spacer()
                    Image("Dice \(num)").Dice()
                    Spacer()
                    TextField("Enter food Option", text: $Foodplace)
                    Button(action: {
                        Manager.AddOption(Foodplace)
                    }, label: {
                        Text("add food place").padding()
                    })
                    Button(action: {
                        num = Manager.roll()
                    }, label: {
                        Text("Roll Dice").padding()
                    })

                    Spacer()
                    NavigationLink(destination: OptionView()) {
                        Text("List").modifier(ButtonDesign())
                    }
                }
            }
            .navigationBarHidden(true)
            
        }.environmentObject(Manager)

    }
}


struct OptionView: View {
    @EnvironmentObject var Manager: DiceRollManager
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(Manager.FoodList, id: \.self) { option in
                            Text(option)
                        }
                    }
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

struct WelcomeScreen: View {
var body: some View{
    
        Text("Welcome to our game")
            .font(.custom("Times New Roman", size: 40))
                       .foregroundColor(Color.black)
                       .padding(.bottom,30)
                       .background(Color.white)
                       .cornerRadius(10)
    Image("86")
    toss(texting: Texting(), test: Coin())
    }
}

struct toss: View{
    @ObservedObject var texting: Texting //class texting
    @ObservedObject var test: Coin //class coin
    var body: some View{
        VStack{
            VStack{
                Text(" \(texting.text) (Heads): \(test.headsCounting)")
                Text(" \(texting.text2) (Tails): \(test.tailsCounting)")
            }
            Spacer()
            Coining(Flipping: $test.flipping,Heads:$test.heads)
                .rotation3DEffect(Angle(degrees: Double(test.intensity)), axis: (x:CGFloat(0),y:CGFloat(20),z:CGFloat(0)))
            Spacer()
            TextField("User Input", text: $texting.inputText)
            TextField("User Input", text: $texting.inputText2)
            Spacer()
            Button("Save Data"){
                UserDefaults.standard.set(texting.inputText, forKey: "TEXT_KEY")
                UserDefaults.standard.set(texting.inputText2, forKey: "TEXT_KEY")
                texting.text = texting.inputText
                texting.text2 = texting.inputText2
                print("saved value: \(texting.inputText)")
                print("saved value2: \(texting.inputText2)")
            }
            Spacer()
                
            Button("Take your Chances"){
                test.FlipCoin()
            }
        }
    }
}
struct Coining: View {
    @Binding var Flipping:Bool
    @Binding var Heads: Bool
    var body: some View{
        ZStack{
            if Heads {
            Image("heads")
                .clipShape(Circle())
                .frame(width:150, height:150)
            }
                else {
            Image("tails")
                .clipShape(Circle())
                .frame(width: 150 , height: 150)
                }
        }
    }
     
    
}

struct MysteryBoxView:View{
    @ObservedObject var box = MysteryBox()
    @SceneStorage("newPrize") var newPrize: String = ""
    @State var message: String = ""
    var body: some View {
        //@State var box = MysteryBox()
        VStack{
            Text("What's in the box?!")
                .font(.title).padding()
        }
        Image("Box").modifier(imageView())
        HStack{
            Button("Open Box", action:{
                //Text
                message = box.randomPrize()
            }).modifier(ButtonDesign())
        
            Button("Check Box", action:{
                message = box.prizeList()
                //Text("Test")
                
                    //.padding()
            }).modifier(ButtonDesign())
            //Text(box.prizeList())
        }
        VStack
        {
            Text(message)
            
        }    
        Spacer()
        TextField("Enter a restaurant or a store", text: $newPrize)
        
        Button(action:{
            
            box.addPrize(newPrize)
            /*if(box.prizes.count == 10){
                print("The box is full")
            }*/
            
        }, label:{
            Text("Add coupon").padding()
        })
        Spacer()
        
    }
}
