/*:
## App Exercise - Workout Functions
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 A `RunningWorkout` struct has been created for you below. Add a method on `RunningWorkout` called `postWorkoutStats` that prints out the details of the run. Then create an instance of `RunningWorkout` and call `postWorkoutStats()`.
 */
struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
    
    func postWorkoutStats() {
        print("\(distance)를 \(time)에 뛰었습니다. 높이는 \(elevation)입니다.")
    }
}

var marathon = RunningWorkout(distance: 10, time: 5, elevation: 1.5)
marathon.postWorkoutStats()

//:  A `Steps` struct has been created for you below, representing the day's step-tracking data. It has the goal number of steps for the day and the number of steps taken so far. Create a method on `Steps` called `takeStep` that increments the value of `steps` by one. Then create an instance of `Steps` and call `takeStep()`. Print the value of the instance's `steps` property before and after the method call.
struct Steps {
    var steps: Int
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
        print("지금까지 \(steps) 걸음을 걸었으며, \(goal - steps) 남았습니다.")
    }
}

var stairway = Steps(steps: 0, goal: 100)
stairway.takeStep()
stairway.takeStep()
stairway.takeStep()
stairway.takeStep()
stairway.takeStep()
stairway.takeStep()
stairway.takeStep()


/*:
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Computed Properties and Property Observers](@next)
 */
