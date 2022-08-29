import UIKit

// Error Handling

func canThrowAnError() throws {
    // this function may or may not throw an error
}

do {
    try canThrowAnError()
        // no error was thrown
} catch {
    // an error was thrown
}

// how error handling can be used to respond to different error conditions:

func makeASandwich() throws {
    // ....
}


//do {
//    try makeASandwich()
//    eatASandwich()
//} catch SandwichError.outOfCleanDishes {
//    wasDishes()
//} catch SandwichError.missingIngredients( let ingredients) {
//    buyGroceries(ingredients)
//}



