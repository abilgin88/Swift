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
//:Adding Exercise Instances
var pushUp = Exercise(name: "Push up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)
var sitUps = Exercise(name: "Sit up", muscleGroups: ["Abdominis", "Chest", "Neck"], reps: 20, sets: 3)
var squat = Exercise(name: "Squat", muscleGroups: ["Abdominis", "Chest", "Neck"], reps: 15, sets: 4)

//: Creating The Regimen Structure
struct Regimen {
    var dayOfWeek: String
    var exercises: [Exercise]
    
    init(dayOfWeek: String, exercises: [Exercise]) {
        self.dayOfWeek = dayOfWeek
        self.exercises = exercises
    }
    
    func printExercisePlan() {
        print("Today is \(self.dayOfWeek) and the plan is to: ")
        
        for exercise in self.exercises {
            print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)")
            print("That's a total of \(exercise.totalReps) \(exercise.name)")
        }
    }
}

var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [pushUp])
mondayRegimen.printExercisePlan()
//:Additional Challenges
/*
 Create additional Exercise instances.
 Create additional Regimen instances.
 Add a mutating method to the Regimen structure to add exercises.
 */

var SundayRegimen = Regimen(dayOfWeek: "Sunday", exercises: [sitUps])
SundayRegimen.printExercisePlan()
