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
    
    var body: some View {
        VStack{
            HStack(spacing: 35){
                
                ZStack {
                    
                    Circle()
                        .foregroundColor(Color.bronze)
                        .shadow(radius: 0, x: 0, y: 7)
                        .blur(radius: 4)
                    
                    
                    
                    Circle()
                        .strokeBorder(Color.bronze_border, lineWidth: 5)
                    
                    
                    Text(badgeIcon)
                        .font(.system(size: 65))
                    
                }
                .frame(width: 100, height: 100)
                
                ZStack {
                    
                    Circle()
                        .foregroundColor(Color.silver)
                        .shadow(radius: 0, x: 0, y: 7)
                        .blur(radius: 4)
                    
                    
                    Circle()
                        .strokeBorder(Color.silver_border, lineWidth: 5)
                    
                    
                    Text(badgeIcon)
                        .font(.system(size: 65))
                }
                .frame(width: 100, height: 100)
                
                ZStack {
                    
                    Circle()
                        .foregroundColor(Color.gold)
                        .shadow(radius: 0, x: 0, y: 7)
                        .blur(radius: 4)
                    
                    
                    Circle()
                        .strokeBorder(Color.gold_border, lineWidth: 5)
                    
                    
                    Text(badgeIcon)
                        .font(.system(size: 65))
                }
                .frame(width: 100, height: 100)
                
                
                
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

struct RewardsRow_Previews: PreviewProvider {
    static var previews: some View {
        RewardsRow(badgeIcon: "🎓")
    }
}

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
