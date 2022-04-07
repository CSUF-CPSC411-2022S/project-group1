//
//  MysteryBox.swift
//  CPSC-411 Project
//
//  Created by Tran, Nathan on 3/9/22.
//
import Foundation

//import UIKit
class MysteryBox: ObservableObject{//:UIViewController{
    //start code here
    //var message: String = ""
    @Published var prizes = [
        "A blank check?",
        "$5 Coupon to Target?",
        "Free Burger from Five Guys",
        "Here's a quarter",
        "$10 gift card for Starbucks",
    ]
    
    
    
    /*func randomPrize()->String{
        let num = Int.random(in: 1...prizes.count)
        let index = num - 1
        let temp = prizes[index]
        //prizes.remove(at: index)
        if(prizes.count == 0){
           return "You have received every single prize"
       }
        prizes.remove(at: index)
        return temp
    }*/
    func randomPrize(){
           
           let num: Int = Int.random(in: 1...prizes.count)
           let index = num - 1
           print(prizes[index])
           prizes.remove(at: index)
           if(prizes.count == 0){
              print("You have received every single prize")
          }
          
       }
    func addPrize(newItem: String){
        let item: String
        if(prizes.count > 0)
        {
            item = "$5 gift card for " + newItem
            prizes.append(item)
        }
        /*if(prizes.count == 10)
        {
            return "The box is full"
        }*/
        
    }
    func prizeList()-> String{
        return "There are " + "\(prizes.count)" + " prizes in this box"
        
    }
    /*func prizeList(){
        print ("There are " + "\(prizes.count)" + " prizes in this box")
        
    }*/

    init (){
        
    }

}
