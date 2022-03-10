//
//  MysteryBox.swift
//  CPSC-411 Project
//
//  Created by Tran, Nathan on 3/9/22.
//

import Foundation

//import UIKit
class MysteryBox{//:UIViewController{
    //start code here
    //var randomNum: Int?
    
    
    
    func randomNumber()-> Int{
        
        let num: Int
        switch num
        {
            
            case 1...10: return 1
            //case 11...20: return 2
            //case 21...30: return 3
            default: return 0
        }
        //print(Int.random(in: 1...10))
        
    }
    init (){
        
    }
}
