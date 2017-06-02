//
//  Transformer.swift
//  org.javacream.training.swift.core
//
//  Created by Apple on 24.01.17.
//  Copyright © 2017 Javacream. All rights reserved.
//

import Foundation

func transformerExample(){
    var transformer : Dictionary<String, (String)->String> = [String: (String)->String]()
    let input = "Sawitzki"

    /*
     ###################
     Inner Function
     */
    func toUpper(_ string: String) ->String{
        return string.uppercased()
    }
   
    transformer["upper"] = toUpper

    let optionalUpperTransformation : ((String)->String)? = transformer["upper"]
    if let upperTransformation = optionalUpperTransformation{
        print(upperTransformation(input))
    }

    print(transformer["upper"]!(input))
    /*
     ###################
     Function Variable
     */
    let toLower:(String)->String = {(string) in let result = string.lowercased()
        return result
    } //{(param) in sequence} ist ein Funktions-Literal

    transformer["lower"] = toLower

    print(transformer["lower"]!(input))
    
    if let x = transformer["reverse"]{
        print(x(input))
    }else{
        print("no reverse transformation available")
    }
    
    transformer["reverse"] = {(string) in return String(string.characters.reversed())}
    
    print(transformer["reverse"]!(input))

    let var1 = "Sawitzki"
    let var2: (String)->String = {(string) in return String(string.characters.reversed())}

    print(var1)
    print(var2("Hugo"))
    print(var2)
    //print(var1()) -> Compiler-Fehler
    
    
    
}
