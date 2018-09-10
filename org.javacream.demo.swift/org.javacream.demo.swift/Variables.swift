import Foundation

/*
 Block-Kommentar
 */
func trainingVariables(){
    
    //startMessage: Variablenname
    // = Zuweisung
    //"..." String-Literal
    var exerciseName = "training variables"
    let startMessage = "Start " + exerciseName
    print(startMessage) //ab jetzt Kommentar
    let finishMessage = "\(exerciseName) done"

    exerciseName = "Hugo"
    
    //Weitere Literale
    let number:Int = 9
    let realNumber:Double = 4.2
    let state:Bool = true
    
    //Ist Swift statisch typisiert? -> JA!
    
    // exerciseName = 4711  -> Compiler-Fehler
    
    var message = "Hello" //Typ-Bestimmung erfolgt über Type Inference
    var message2:String = "Hello" //Explizite Typ-Angabe

    trainingOptionalVariables()
    print(finishMessage)

}

func trainingOptionalVariables(){
    var message:String? = nil
    message = "Hugo"
    //Holzhammer: Explizites Umwandeln Optional->Nicht Optional
    let outputMessage:String = message!
    print(outputMessage)
    //message = nil
    //Besser, aber nicht Swift-typisch: Prüfung auf nil
    if (message != nil){
        let outputMessage2:String = message!
        print(outputMessage2)
    }else{
        print ("message was null")
    }
    
    //Swift-typisch
    if let outputMessage3 = message{
        print(outputMessage3)
    }else{
        print ("message was null")
    }
    
    var optionalNumber:Int?
    var number:Int = 9
    
    number = optionalNumber! //ohne ! Compiler-Fehler, potenziell zur Laufzeit gibt es einen Runtime-Fehler!
    optionalNumber = number
    
    
    
    
}
