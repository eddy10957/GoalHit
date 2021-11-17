import Foundation
import SwiftUI

struct GoalCardBig : View{
    
    var radius : CGFloat = 20
    
    var body: some View{
        ZStack(alignment: .topLeading){
            VStack{
                RoundedRectangle(cornerRadius: radius)
                    .foregroundColor(.green)
            }
            
                Text("Study Goal")
                    .font(.largeTitle)
                    .padding()
                
            
        }
        .frame(width: 350, height: 400)
    }
}


struct GoalCardBig_Previews: PreviewProvider {
    static var previews: some View {
        GoalCardBig()
    }
}
