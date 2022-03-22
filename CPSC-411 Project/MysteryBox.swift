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
    //var prize: String
    var prizes = [
        "A blank check?",
        "$5 Coupon to Target?",
        "Free Burger from Five Guys",
        "Here's a quarter",
    ]
    
    
    
    func randomPrize(){
        
        let num: Int = Int.random(in: 1...prizes.count)
        let index = num - 1
        print(prizes[index])
        prizes.remove(at: index)
        if(prizes.count == 0){
            print("You have received every single prize")
        }
       
    }
    /*func addPrize(){
        
    }*/
    func prizeList(){
        print("There are " + "\(prizes.count)" + " prizes in this box")
    }
    
        

    init (){
        
    }

}
