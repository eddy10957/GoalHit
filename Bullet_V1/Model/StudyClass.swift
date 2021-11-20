import Foundation
import SwiftUI

class StudyClass : GoalClass{
    var dueDate : String = ""
    var hourAmount : Double
    var studiedHours : Double
    
    
    init(nameGoal: String, colorGoal: Color, badgeGoal: String, dueDate: String, hourAmount: Double, studiedHours: Double){
        
        self.dueDate = dueDate
        self.hourAmount = hourAmount
        self.studiedHours = studiedHours
        super.init(nameGoal: nameGoal, colorGoal: colorGoal, badgeGoal: badgeGoal)
        
    }
    
    override func progressTracking() -> Float {
        return Float(self.studiedHours/self.hourAmount)
    }
    
    
}


