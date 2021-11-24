//
//  RewardsRow.swift
//  Bullet_V1
//
//  Created by Edoardo Troianiello on 18/11/21.
//
// TODO: aggiungere la logica di quando un bagde non è completato
//codice in fondo alla pagina


import SwiftUI

struct RewardsRow: View {
    
    @State var badgeIcon : String
    @State var isCompleted : Bool
    @State var gold : Color = .gold
    @State var silver : Color = .silver
    @State var bronze : Color = .bronze
    @State var goldBorder : Color = .gold_border
    @State var silverBorder : Color = .silver_border
    @State var bronzeBorder : Color = .bronze_border
    
    var body: some View {
        if isCompleted {
        VStack{
            HStack(spacing: 35){
                
               
                RewardBadge(badgeIcon: badgeIcon, isCompleted: true, color: bronze , border: bronzeBorder)
                
                RewardBadge(badgeIcon: badgeIcon, isCompleted: true, color: silver, border: silverBorder)
                
                RewardBadge(badgeIcon: badgeIcon, isCompleted: true, color: gold, border: goldBorder)
                
               
                
            }
            .padding(.horizontal, 3.0)
            HStack(spacing: 50) {
                
                Text("First Step")
                
                Text("Second Step")
                
                Text("Third Step")
                
            }
        }
        .frame(width: 410, height: 100)
        }
        else {
            VStack{
                HStack(spacing: 35){
                    
                    RewardBadge(badgeIcon: badgeIcon, isCompleted: true , color: bronze, border: bronzeBorder)
                    
                    RewardBadge(badgeIcon: badgeIcon, isCompleted: false, color: silver , border: silverBorder)
                    
                    RewardBadge(badgeIcon: badgeIcon, isCompleted: false, color: gold, border: goldBorder)
                    
                    
                    
                }
                .padding(.horizontal, 3.0)
                HStack(spacing: 50) {
                    
                    Text("First Step")
                    
                    Text("Second Step")
                    
                    Text("Third Step")
                    
                }
            }
            .frame(width: 410, height: 100)
        }
    }
}

//struct RewardsRow_Previews: PreviewProvider {
//    static var previews: some View {
//        RewardsRow(badgeIcon: "🎓")
//    }
//}

//struct BadgeBlack: View {
//var body: some View {
//    Circle()
//        .foregroundColor(Color.gray_2)
//        .padding()
//        .opacity(0.71)
//}
//}
//
//struct BadgeBlack_Previews: PreviewProvider {
//static var previews: some View {
//    BadgeBlack()
//}
//}
//
//extension Color{
//
//static let gray_2 = Color(red: 99 / 255, green: 97 / 255, blue: 94 / 255)
//
//}
