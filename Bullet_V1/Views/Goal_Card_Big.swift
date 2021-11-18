import Foundation
import SwiftUI

struct GoalCardBig : View{
    
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
            HStack{
            
            Text("Study Goal")
                .font(.largeTitle)
                .padding()
                
                Spacer()
                
                Image(systemName: "ellipsis.circle")
                    .padding()
                    .font(.system(size: 40))
            
            }
        }
        .frame(width: 350, height: 400)
    }
}


struct GoalCardBig_Previews: PreviewProvider {
    static var previews: some View {
        GoalCardBig()
    }
}
