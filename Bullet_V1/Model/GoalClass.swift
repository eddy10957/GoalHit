import Foundation
import SwiftUI

class GoalClass : ObservableObject{
    
    var nameGoal : String = ""
    var colorGoal : Color = .white
    var badgeGoal : String = ""
    var percentageGoal : Float = 0.0
    var isCompleted : Bool = false
    
    init(nameGoal: String, colorGoal: Color, badgeGoal: String, percentageGoal: Float){
        self.nameGoal = nameGoal
        self.colorGoal = colorGoal
        self.badgeGoal = badgeGoal
        self.percentageGoal = percentageGoal
    }
    public func progress_tracking(){}
}
