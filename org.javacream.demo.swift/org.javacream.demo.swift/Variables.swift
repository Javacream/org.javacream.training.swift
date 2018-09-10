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

    var message3:String
    
    message3 = "Hugo"

    print(finishMessage)

}
