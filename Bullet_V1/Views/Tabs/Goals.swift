import SwiftUI

struct Goals: View {
    
    @State var isPressedForModal = false
        
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    GoalCardBig(goalBig: goals[0], isPressedForModal: $isPressedForModal)
                    VStack{
                        HStack{
                            GoalCard(goal: goals[1])
                            GoalCard(goal: goals[2])
                        }
                        HStack{
                            GoalCard(goal: goals[3])
                            GoalCard(goal: goals[4])
                            
                        }
                    }
                }
            }
            .navigationTitle("Goals")
            .sheet(isPresented: $isPressedForModal, content: {ModalGoal(isPressedForModal: $isPressedForModal, modalGoal: goals[0])})
            
        }
    }
}




struct Goals_Previews: PreviewProvider {
    static var previews: some View {
        Goals()
    }
}

