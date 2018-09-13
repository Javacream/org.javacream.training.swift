import Foundation
import UIKit

infix operator ->-
infix operator ->>-

func ->- <R> (background: @escaping () -> R, update: @escaping (_: R) -> Void){
    DispatchQueue.global().async {
        let result = background()
        DispatchQueue.main.async {update(result)}
    }
}



func ->>- <R> (background: @escaping () throws -> R, callback: (update: (_: R) -> Void, errorHandler: (_: Error) -> Void)){
    DispatchQueue.global().async {
        do{
            let result = try background()
            DispatchQueue.main.async {callback.update(result)}
        }
        catch let error {
            DispatchQueue.main.async {callback.errorHandler(error)}

        }
    }
}
