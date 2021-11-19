//
//  Badge_Row.swift
//  Rewards
//
//  Created by Christian Candela on 17/11/21.
import SwiftUI

struct Rewards: View {
    
    var body: some View {
        
        
        
        VStack(spacing:30) {
            
            VStack {
                
                
                HStack {
                    
                    Text("Study")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                
                RewardsRow(badgeIcon: "🎓")
                    
            
                HStack {
                    
                    Text("Sport")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                
                RewardsRow(badgeIcon: "🏀")

            
      
                HStack {
                    
                    Text("Training")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                
                RewardsRow(badgeIcon: "🏋️")
                
            
            
            }
            .padding(.horizontal, 5.0)
    }
    
}
}

extension Color{
    
    static let bronze = Color(red: 252 / 255, green: 242 / 255, blue: 232 / 255)
    static let bronze_border = Color(red: 172 / 255, green: 142 / 255, blue: 104 / 255)
    
    static let silver = Color(red: 249 / 255, green: 249 / 255, blue: 249 / 255)
    static let silver_border = Color(red: 174 / 255, green: 174 / 255, blue: 178 / 255)
    
    static let gold = Color(red: 253 / 255, green: 251 / 255, blue: 231 / 255)
    static let gold_border = Color(red: 255 / 255, green: 214 / 255, blue: 10 / 255)
    
}


struct Rewards_Previews: PreviewProvider {
    static var previews: some View {
        Rewards()
    }
}
