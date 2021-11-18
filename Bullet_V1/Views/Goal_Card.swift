//TODO: Trovare ed aggiungere l'elemento del progresso, una volta aggiunto la spaziatura degli elementi dovrebbe essere ok
//TODO: Aggiungere tutte le variabili che dobbiamo passare al goalcard: colore, progresso, altre var per il progresso e titolo


import Foundation
import SwiftUI

struct GoalCard : View{
    @State var progress :Float = 0.18
    var radius : CGFloat = 20
   
    
    var body: some View{
        ZStack(){
//            ZStack{
                RoundedRectangle(cornerRadius: radius)
                    .strokeBorder(.gray)
//            }

                VStack(alignment: .center){
                    
                    CircularProgressBar(progress: $progress)
                        .padding([.top, .bottom, .trailing])
                    VStack(alignment: .center){
                    Text("Study Goal")
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


struct GoalCard_Previews: PreviewProvider {
    static var previews: some View {
        GoalCard()
    }
}
