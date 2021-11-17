import Foundation

class Study_Class : Goal_Class{
    
    var due_date : Double = 0.0
    var hour_amount : Double = 0.0
    var studied_hours : Double = 0.0
    
    override func progress_tracking() {
        studied_hours = hour_amount - studied_hours
    }
    
//    Queste funzioni le lascio ma BIG GIANLUCA ci ha detto che stepper fa tutto lui
//    credo che basti passare le variabili
    
    func add_studied_hour(){
        studied_hours += 1
    }
    
    func remove_studied_hour(){
        studied_hours -= 1
    }
}
