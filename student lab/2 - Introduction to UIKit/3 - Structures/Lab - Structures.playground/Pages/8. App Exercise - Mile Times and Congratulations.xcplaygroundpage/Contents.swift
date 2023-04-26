/*:
## App Exercise - Mile Times and Congratulations
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 The `RunningWorkout` struct below holds information about your users' running workouts. However, you decide to add information about average mile time. Add a computed property called `averageMileTime` that uses `distance` and `time` to compute the user's average mile time. Assume that `distance` is in meters and 1600 meters is a mile.
 
 Create an instance of `RunningWorkout` and print the `averageMileTime` property. Check that it works properly.
 */

// 🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️🙋🏻‍♂️
struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
    
    var averageMileTime: Double {
//        let milesTraveled = distance / 1600
//        return milesTraveled / time
        return time / distance * 1600
    }
}

let runTime = RunningWorkout(distance: 3200, time: 1, elevation: 13.0)
runTime.averageMileTime

/*:
 In other app exercises, you've provided encouraging messages to the user based on how many steps they've completed. A great place to check whether or not you should display something to the user is in a property observer.
 
 In the `Steps` struct below, add a `willSet` to the `steps` property that will check if the new value is equal to `goal`, and if it is, prints a congratulatory message. Create an instance of `Steps` where `steps` is 9999 and `goal` is 10000, then call `takeStep()` and see if your message is printed to the console.
 */
struct Steps {
    var steps: Int {
        willSet {
//            let newValue = steps
            if newValue == goal {   /// ⭐️ steps안에 만들어 놓았으니까 별도로 step이라고 언급을 하지 않아도 되는거구나~
                print("성공했습니다! 축하해요")
            }
        }
    }
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
    
//    init(steps:Int) {
//        self.steps = steps
//        goal = 10000
//    }
}

//var finalStep = Steps(steps: 9999)
//print(finalStep)
//finalStep.takeStep()
//print(finalStep)

var steps = Steps(steps: 9999, goal: 10000) /// memberwise initializer~
steps.takeStep()

/*:
[Previous](@previous)  |  page 8 of 10  |  [Next: Exercise - Type Properties and Methods](@next)
 */
