import Foundation
import SwiftUI

class GoalClass : ObservableObject{
    
    var nameGoal : String = ""
    var colorGoal : Color = .white
    var badgeGoal : String = ""
    var percentageGoal : Float!
    var isCompleted : Bool = false
    
    init(nameGoal: String, colorGoal: Color, badgeGoal: String){
        self.nameGoal = nameGoal
        self.colorGoal = colorGoal
        self.badgeGoal = badgeGoal
        self.percentageGoal = progressTracking()
    }
    public func progressTracking() -> Float {
        return 0.0
    }
}
