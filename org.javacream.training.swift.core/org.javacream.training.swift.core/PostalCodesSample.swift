//
//  PostalCodesSample.swift
//  org.javacream.training.swift.core
//
//  Created by Admin on 16.04.18.
//  Copyright © 2018 Javacream. All rights reserved.
//

import Foundation

func postalCodesFromCity(){
    let postalCodes:Dictionary<String, Array<Int>> = ["München": [81373, 86004, 87732], "Stuttgart": [76543, 77443]]
    
    let codes:Array<Int>? = postalCodes["Stuttgart"]
    
    if let notNilCodes = codes{
        print("found codes for 'Stuttgart'")
        for code in notNilCodes{
            print("PLZ for Stuttgart: \(code)")
        }
    }
    else{
            print("no codes found for 'Stuttgart'")

    }

    let codes2:Array<Int>? = postalCodes["Düsseldorf"]
    
    if let notNilCodes = codes2{
        print("found codes for 'Düsseldorf'")
        for code in notNilCodes{
            print("PLZ for Stuttgart: \(code)")
        }
    }
    else{
        print("no codes found for 'Düsseldorf'")
        
    }

}
