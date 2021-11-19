import Foundation
import SwiftUI

struct GoalCardBig : View{
    
    @ObservedObject var studyGoal1 = Study_Class(nameGoal: "Math Exam", colorGoal: .blue, badgeGoal: "🎓", percentageGoal: 0.30, dueDate: "17-12-2021", hourAmount: 30.0, studiedHours: 9.0)
    

    var radius : CGFloat = 20
    let hueColors = stride (from: 0, to: 1, by: 0.2).map{
        Color(hue: $0, saturation: 0.5, brightness: 1)
    }
    
    var body: some View{
        ZStack(alignment: .topLeading){
            VStack{
                RoundedRectangle(cornerRadius: radius)
                    .fill(
                        LinearGradient(gradient: Gradient(colors: self.hueColors) , startPoint:.top, endPoint:.bottom))
            }
            VStack{
                HStack{
                    
                    Text("\(studyGoal1.nameGoal)")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button{
                        print("Button tapped!")
                    }
                    label :{
                        Image(systemName: "ellipsis.circle")
                            .padding()
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                    }
                    
                    
                }
                CircularProgressBar(progress: $studyGoal1.percentageGoal, color: $studyGoal1.colorGoal)
                    .frame(width: 200, height: 180)
                
                Text("\(studyGoal1.hourAmount - studyGoal1.studiedHours) hours left")
                    .foregroundColor(.white)
            }
        }
        .frame(width: 350 , height: 400)
    }
}


struct GoalCardBig_Previews: PreviewProvider {
    static var previews: some View {
        GoalCardBig()
    }
}
