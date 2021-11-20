import Foundation
import SwiftUI

struct GoalCardBig : View{
//    dovrebbe essere Goals class ma evidentemente non ho capito l inheritance in Swift mannaggina
    @ObservedObject var goalBig : StudyClass

    var radius : CGFloat = 20
    let hueColors = stride (from: 0, to: 1, by: 0.2).map{
        Color(hue: $0, saturation: 0.5, brightness: 1)
    }
    
    @Binding var isPressedForModal : Bool
    
    var body: some View{
        ZStack(alignment: .topLeading){
            VStack{
                RoundedRectangle(cornerRadius: radius)
                    .fill(
                        LinearGradient(gradient: Gradient(colors: self.hueColors) , startPoint:.top, endPoint:.bottom))
            }
            VStack{
                HStack{
                    
                    Text("\(goalBig.nameGoal)")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button{
                        print("L'ho premuto come un porco!")
                        self.isPressedForModal = true
                    }
                    label :{
                        Image(systemName: "ellipsis.circle")
                            .padding()
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                    }
                    
                    
                }
                CircularProgressBar(progressGoal: goalBig)
                    .frame(width: 200, height: 180)
//                CircularProgressBar(progress: goalBig.percentageGoal, color: goalBig.colorGoal)
//                    .frame(width: 200, height: 180)
//                 Spacer()
                Text("\(Int(goalBig.hourAmount - goalBig.studiedHours)) hours left")
                    .foregroundColor(.white)
            }
        }
        .frame(width: 350 , height: 400)
    }
}


/*struct GoalCardBig_Previews: PreviewProvider {
    static var previews: some View {
        GoalCardBig()
    }
}
*/
