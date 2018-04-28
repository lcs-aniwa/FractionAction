import Foundation

func fractionSimplifier(_ numerator: Int, _ denominator: Int) {
    var variableForNumerator = numerator
    var variableForDenominator = denominator
    if numerator == 0 && denominator != 0{
        print("your fraction is 0.")
    } else if denominator == 0 {
        print("the fraction you have input does not exist. Go to Gordon.")
    }
    
    
    let remainder1 = variableForNumerator % variableForDenominator
    let quotient1 = variableForNumerator / variableForDenominator
    
    let remainder2 = variableForDenominator % variableForNumerator
    let quotient2 = variableForDenominator / variableForNumerator
    
    
    if remainder1 == 0 {
        print(quotient1)
    } else if remainder2 == 0 {
        print("1/\(quotient2)")
    }
    
    for i in 1...variableForNumerator {
        for j in 1...variableForDenominator {
            if j == i {
                variableForDenominator /= j
                variableForNumerator /= i
            }
        }
    }
   

}
fractionSimplifier(10, 30)
