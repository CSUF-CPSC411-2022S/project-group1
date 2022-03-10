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
    var randomNum: Int?
    var prize: String
    var num: Int
    //private var size: Int  = 9
    //private (set) var
    
    
    func randomNumber()-> Int{
        
        let num: Int = Int.random(in: 1...30)
        var value: Int = 0
        switch num
        {
            
            case 1...10: value = 1
            case 11...20: value = 2
            case 21...30: value = 3
            default: return 0
        }
        return value
    }
    /*func randomNumber(){
        print(Int.random(in: 1...10))
           }*/
        

    init (){
        
    }

}
