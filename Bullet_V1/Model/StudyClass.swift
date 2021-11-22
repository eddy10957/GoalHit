import Foundation
import SwiftUI

class StudyClass : GoalClass{
    @Published var dueDate : String = ""
    @Published var hourAmount : Double {
        didSet{
            percentageGoal = progressTracking()
        }
    }
    @Published var studiedHours : Double{
        didSet{
            percentageGoal = progressTracking()
        }
    }
    
    
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


