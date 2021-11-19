//TODO: Trovare ed aggiungere l'elemento del progresso, una volta aggiunto la spaziatura degli elementi dovrebbe essere ok
//TODO: Aggiungere tutte le variabili che dobbiamo passare al goalcard: colore, progresso, altre var per il progresso e titolo


import Foundation
import SwiftUI

struct GoalCard : View{
    @ObservedObject var goal : Goal_Class

    var radius : CGFloat = 20
   
    
    var body: some View{
        ZStack(){
//            ZStack{
                RoundedRectangle(cornerRadius: radius)
                .strokeBorder(goal.colorGoal)
//            }

                VStack(alignment: .center){
                    
                    CircularProgressBar(progress: $goal.percentageGoal , color: $goal.colorGoal )
                        .padding([.top, .bottom, .trailing])
                    VStack(alignment: .center){
                        Text("\(goal.nameGoal)")
                        .font(.system(size: 17.0))
                        .fontWeight(.bold)
                    Text("placeholder details")
                        .font(.system(size: 15.0))
                        .fontWeight(.light)
                    }
                    .padding(.bottom, 4.0)
                }
                .padding(.leading, 14.0)
        }
        .frame(width: 182, height: 227)
    }
    
    
    
}


//struct GoalCard_Previews: PreviewProvider {
//    static var previews: some View {
//        GoalCard()
//    }
//}
