import SwiftUI

struct Goals: View {
    
    @State var isPressedForModal = false
        
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    GoalCardBig(isPressedForModal: $isPressedForModal)
                    VStack{
                        HStack{
                            GoalCard(goal: studyGoal2)
                            GoalCard(goal: studyGoal3)
                        }
                        HStack{
                            GoalCard(goal: studyGoal4)
                            GoalCard(goal: studyGoal5)
                            
                        }
                    }
                }
            }
            .navigationTitle("Goals")
            .sheet(isPresented: $isPressedForModal, content: {OnBoardingModalGoal(isPressedForModal: $isPressedForModal)})
            
        }
    }
    
    
    @ObservedObject var studyGoal2 = Study_Class(nameGoal: "FCE Exam", colorGoal: .black, badgeGoal: "🎓", percentageGoal: 0.22, dueDate: "20-12-2021", hourAmount: 100.0, studiedHours: 22.0)
    
    @ObservedObject var studyGoal3 = Study_Class(nameGoal: "Study Swift", colorGoal: .pink, badgeGoal: "🎓", percentageGoal: 0.25, dueDate: "20-12-2021", hourAmount: 1000, studiedHours: 250.0)
    
    @ObservedObject var studyGoal4 = Study_Class(nameGoal: "Metodi Matematici", colorGoal: .red, badgeGoal: "🎓", percentageGoal: 0.1, dueDate: "20-12-2021", hourAmount: 100.0, studiedHours: 10.0)
    
    @ObservedObject var studyGoal5 = Study_Class(nameGoal: "Human interface Guidelines", colorGoal: .yellow, badgeGoal: "🎓", percentageGoal: 1.0, dueDate: "20-12-2021", hourAmount: 100.0, studiedHours: 100.0)
    
    
}




struct Goals_Previews: PreviewProvider {
    static var previews: some View {
        Goals()
    }
}

