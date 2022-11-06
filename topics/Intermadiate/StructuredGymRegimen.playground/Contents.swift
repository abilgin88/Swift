import UIKit

/* This structure should:
Structured Gym Regimen:
have a name.
a list of muscle groups that the exercise targets.
track how many repetitions (reps) are done in one go.
track how many sets, or rounds of repetitions, we should do.
tally up the total amount of reps.
*/

//:Creating the Exercise Structure
struct Exercise {
    var name: String
    var muscleGroups: [String]
    var reps: Int
    var sets: Int
    var totalReps: Int
    
    init(name: String, muscleGroups: [String], reps: Int, sets: Int) {
        self.name = name
        self.muscleGroups = muscleGroups
        self.reps = reps
        self.sets = sets
        self.totalReps = reps * sets
    }
}
