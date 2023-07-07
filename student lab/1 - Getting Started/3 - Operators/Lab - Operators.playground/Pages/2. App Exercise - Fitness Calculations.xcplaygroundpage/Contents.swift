/*:
## App Exercise - Fitness Calculations
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Your fitness tracker keeps track of users' heart rate, but you might also want to display their average heart rate over the last hour. Create three constants, `heartRate1`, `heartRate2`, and `heartRate3`. Give each constant a different value between 60 and 100. Create a constant `addedHR` equal to the sum of all three heart rates. Now create a constant called `averageHR` that equals `addedHR` divided by 3 to get the average. Print the result.
 */
let heartRate1 = 60
let heartRate2 = 70
let heartRate3 = 80

let addHR = heartRate1 + heartRate2 + heartRate3
let averageHR = addHR / 3
print(averageHR)

//:  Now create three more constants, `heartRate1D`, `heartRate2D`, and `heartRate3D`, equal to the same values as `heartRate1`, `heartRate2`, and `heartRate3`. These new constants should be of type `Double`. Create a constant `addedHRD` equal to the sum of all three heart rates. Create a constant called `averageHRD` that equals the `addedHRD` divided by 3 to get the average of your new heart rate constants. Print the result. Does this differ from your previous average? Why or why not?
//let heartRate1D: Double = Double(heartRate1)    // 애초에 Int라서 Double 값을 주지 못하는 상황인데도?
//let heartRate2D: Double = Double(heartRate2)
//let heartRate3D: Double = Double(heartRate3)
/// 진짜 값을 넣으라고.... ㅋㅋㅋㅋㅋ

let heartRate1D: Double = 60
let heartRate2D: Double = 70
let heartRate3D: Double = 80
let addedHRD = heartRate1D + heartRate2D + heartRate3D
let averageHRD = addedHRD / 3
print(averageHRD)
/// Double로 타입을 받게 되면서 값에 소수점이 포함하게 된다.

//:  Imagine that partway through the day a user has taken 3,467 steps out of the 10,000 step goal. Create constants `steps` and `goal`. Both will need to be of type `Double` so that you can perform accurate calculations. `steps` should be assigned the value 3,467, and `goal` should be assigned 10,000. Create a constant `percentOfGoal` that equals an expression that evaluates to the percent of the goal that has been achieved so far.
let step: Double = 3467
let goal: Double = 10000
let percentOfGoal: String = String(step / goal * 100) + "%"

/*:
[Previous](@previous)  |  page 2 of 8  |  [Next: Exercise - Compound Assignment](@next)
 */
