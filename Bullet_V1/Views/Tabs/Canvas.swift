//
//  Canvas_View.swift
//  Bullet_V1
//
//  Created by Marta Formisano on 19/11/21.
//

import Foundation
import SwiftUI

struct Canvas: View {
    
    //var vectorCanvasCard = [CanvasCard(imageCard: "rule_basic", nameCard: "Rule basic"),CanvasCard(imageCard: "green_template", nameCard: "Green Template"), CanvasCard(imageCard: "daily_planner", nameCard: "Daily planner")]
    
    //    var nameCardView = ["Rule basic", "Green Template", "Daily planner", "Grid basic", "Pink template", "Blue template", "Weekly planner"]
    //
    let imageCardView = ["rule_basic", "green_template", "daily_planner", "grid_basic", "pink_template", "blue_template", "weekly_planner"]
    
    let columns = [GridItem(.adaptive(minimum: 130))]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20){
                    ForEach(imageCardView, id: \.self){ value in
                        CanvasCard(imageCard: value, nameCard: value)
                            .foregroundColor(.black)
                    }
                }.padding()
            }
            .navigationTitle("Canvas")
            .navigationBarItems(leading: Button{} label: {
                Text("Edit")
            }, trailing: Button{} label: {
                Image(systemName: "plus")
            })
        }
        .foregroundColor(.green)
    }
}

struct Canvas_Previews: PreviewProvider {
    static var previews: some View {
        Canvas()
    }
}
