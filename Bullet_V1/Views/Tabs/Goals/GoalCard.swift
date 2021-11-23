
import Foundation
import SwiftUI

struct GoalCard : View{
    
    @ObservedObject var goal : StudyClass
    
    
    var radius : CGFloat = 20
    @Binding var isPressedForModal : Bool
    
    var body: some View{
        ZStack(){
            RoundedRectangle(cornerRadius: radius)
                .strokeBorder(goal.colorGoal)
            HStack{
                VStack(alignment: .center){
                    CircularProgressBar(progressGoal: goal)
                        .padding([.top, .bottom, .trailing])
                    VStack(alignment: .center){
                        Text("\(goal.nameGoal)")
                            .font(.system(size: 17.0))
                            .fontWeight(.bold)
                            .padding(.trailing)
                    }
                    
                    VStack(alignment: .center){
                        Text("\(Int(goal.hourAmount - goal.studiedHours)) hours left")
                            .font(.system(size: 15.0))
                            .fontWeight(.light)
                    }
                    .padding(.bottom, 4.0)
                }
                .padding(.leading, 14.0)
            }
        }
        .frame(width: 182, height: 227)
    }
}


//struct GoalCard_Previews: PreviewProvider {
//    static var previews: some View {
//        GoalCard()
//    }
//}
