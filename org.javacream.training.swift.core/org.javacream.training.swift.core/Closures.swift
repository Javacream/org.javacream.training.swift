//
//  X.swift
//  org.javacream.training.swift.core
//
//  Created by Apple on 24.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation

func closure(){
    let result = demoClosure("Hugo");
    let result2 = demoClosure("Emil");
    result()
    
    result2()
    result()
//    print(localVar)
    
}

func demoClosure(_ param: String) -> (()->Void){
    let localVar = "Method Scoped in demoClosure, param=\(param)"
    let egal = "..."
    func inner(){
        print(localVar)
    }
//    inner()
    return inner;
}
