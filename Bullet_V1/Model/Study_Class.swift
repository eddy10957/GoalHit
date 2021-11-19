import Foundation
import SwiftUI

class Study_Class : Goal_Class{
    var dueDate : String = ""
    var hourAmount : Double = 0.0
    var studiedHours : Double = 0.0
    
    init(nameGoal: String, colorGoal: Color, badgeGoal: String, percentageGoal: Float, dueDate: String, hourAmount: Double, studiedHours: Double){
        
        super.init(nameGoal: nameGoal, colorGoal: colorGoal, badgeGoal: badgeGoal, percentageGoal: percentageGoal)
        self.dueDate = dueDate
        self.hourAmount = hourAmount
        self.studiedHours = studiedHours
    }
    
    
    
//    perché override ?
    override func progress_tracking() {
        studiedHours = hourAmount - studiedHours
    }
    
    
    
    
    
//    Queste funzioni le lascio ma BIG GIANLUCA ci ha detto che stepper fa tutto lui
//    credo che basti passare le variabili
    
    func add_studied_hour(){
        studiedHours += 1
    }
    
    func remove_studied_hour(){
        studiedHours -= 1
    }
}


