//
//  RewardsRow.swift
//  Bullet_V1
//
//  Created by Edoardo Troianiello on 18/11/21.
//

import SwiftUI

struct RewardsRow: View {
    
    @State var badgeIcon : String
    
    var body: some View {
        VStack{
            HStack{
                
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
                .frame(width: 125, height: 125)
                
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
                .frame(width: 125, height: 125)
                
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
                .frame(width: 125, height: 125)
                
                
                
            }
            .padding(.horizontal, 3.0)
            HStack(spacing: 60) {
                
                Text("First Step")
                
                Text("Second Step")
                
                Text("Third Step")
                
            }
        }
        .frame(width: 410, height: 180)
    }
}

struct RewardsRow_Previews: PreviewProvider {
    static var previews: some View {
        RewardsRow(badgeIcon: "🎓")
    }
}
