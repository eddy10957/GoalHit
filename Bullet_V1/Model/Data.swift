//
//  Data.swift
//  Bullet_V1
//
//  Created by Edoardo Troianiello on 20/11/21.
//

import Foundation
import SwiftUI
//Dovrebbe essere goal class ma ho problemi con l inheritance e per ora non riesco a capire, lo guardiamo con calma poi #1
var goals : [StudyClass] = [
    StudyClass(nameGoal: "Math Exam", colorGoal: .blue, badgeGoal: "🎓",  dueDate: "17-12-2021", hourAmount: 30.0, studiedHours: 15.0),
     StudyClass(nameGoal: "FCE Exam", colorGoal: .black, badgeGoal: "🎓", dueDate: "20-12-2021", hourAmount: 100.0, studiedHours: 22.0),
    
     StudyClass(nameGoal: "Study Swift", colorGoal: .pink, badgeGoal: "🎓",  dueDate: "20-12-2021", hourAmount: 1000, studiedHours: 250.0),
    
    StudyClass(nameGoal: "Metodi Matematici", colorGoal: .red, badgeGoal: "🎓",  dueDate: "20-12-2021", hourAmount: 100.0, studiedHours: 10.0),
    
    StudyClass(nameGoal: "Human interface Guidelines", colorGoal: .yellow, badgeGoal: "🎓", dueDate: "20-12-2021", hourAmount: 100.0, studiedHours: 1.0)
    ]
//StudyClass(nameGoal: "Math Exam", colorGoal: .blue, badgeGoal: "🎓", percentageGoal: 0.30, dueDate: "17-12-2021", hourAmount: 30.0, studiedHours: 9.0),
// StudyClass(nameGoal: "FCE Exam", colorGoal: .black, badgeGoal: "🎓", percentageGoal: 0.22, dueDate: "20-12-2021", hourAmount: 100.0, studiedHours: 22.0),
//
// StudyClass(nameGoal: "Study Swift", colorGoal: .pink, badgeGoal: "🎓", percentageGoal: 0.25, dueDate: "20-12-2021", hourAmount: 1000, studiedHours: 250.0),
//
//StudyClass(nameGoal: "Metodi Matematici", colorGoal: .red, badgeGoal: "🎓", percentageGoal: 0.1, dueDate: "20-12-2021", hourAmount: 100.0, studiedHours: 10.0),
//
//StudyClass(nameGoal: "Human interface Guidelines", colorGoal: .yellow, badgeGoal: "🎓", percentageGoal: 1.0, dueDate: "20-12-2021", hourAmount: 100.0, studiedHours: 100.0)
