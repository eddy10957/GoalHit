import Foundation
import SwiftUI

class GoalClass : ObservableObject{
    
    @Published var nameGoal : String = ""
    @Published var colorGoal : Color = .white
    @Published var badgeGoal : String = ""
    @Published var percentageGoal : Float!
    @Published var isCompleted : Bool = false
    
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
