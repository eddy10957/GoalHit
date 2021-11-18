import Foundation
import SwiftUI

struct GoalCardBig : View{
    
    @State var progress :Float = 0.18
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
                    
                    Text("Study Goal")
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
                CircularProgressBar(progress: $progress)
                    .frame(width: 200, height: 180)
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
