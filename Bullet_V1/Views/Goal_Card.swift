//TODO: Trovare ed aggiungere l'elemento del progresso, una volta aggiunto la spaziatura degli elementi dovrebbe essere ok
//TODO: Aggiungere tutte le variabili che dobbiamo passare al goalcard: colore, progresso, altre var per il progresso e titolo


import Foundation
import SwiftUI

struct GoalCard : View{
    
    var radius : CGFloat = 20
    let hueColors = stride (from: 0, to: 1, by: 0.2).map{
        Color(hue: $0, saturation: 0.5, brightness: 1)
    }
    
    var body: some View{
        ZStack(alignment: .topLeading){
            ZStack{
                
                RoundedRectangle(cornerRadius: radius)
                    .strokeBorder(.gray)
            }
            VStack{
                
                Spacer()
                
                VStack{
                    Spacer()
                    
                    Text("Study Goal")
                        .font(.system(size: 17.0))
                        .fontWeight(.bold)
                        .padding()
                    Text("placeholder details")
                        .font(.system(size: 15.0))
                        .fontWeight(.light)
                        .padding()
                }
            }
        }
        .frame(width: 182, height: 227)
    }
}


struct GoalCard_Previews: PreviewProvider {
    static var previews: some View {
        GoalCard()
    }
}
