//
//  RewardBadge.swift
//  GoalHit
//
//  Created by Edoardo Troianiello on 24/11/21.
//

import SwiftUI

struct RewardBadge: View {
    
    @State var badgeIcon : String
    @State var isCompleted : Bool
    @State var color : Color
    @State var border : Color
    
    var body: some View {
        if isCompleted {
            ZStack {
                
                Circle()
                    .foregroundColor(color)
                    .shadow(radius: 0, x: 0, y: 7)
                    .blur(radius: 4)
                
                
                
                Circle()
                    .strokeBorder(border, lineWidth: 5)
                
                
                Text(badgeIcon)
                    .font(.system(size: 65))
                
            }
            .frame(width: 100, height: 100)
        
          
        
        } else {
            ZStack {
            Circle()
                .strokeBorder(border, lineWidth: 5)
            
            
            Text(badgeIcon)
                .font(.system(size: 65))
            
            Circle()
                .foregroundColor(Color.gray_2)
                .shadow(radius: 0, x: 0, y: 7)
                .opacity(0.71)
        }
        .frame(width: 100, height: 100)
            
        }
    }
}

//struct RewardBadge_Previews: PreviewProvider {
//    static var previews: some View {
//        RewardBadge()
//    }
//}
