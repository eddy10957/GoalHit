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
    let imageCardView = ["Rule Basic", "Green Template", "Daily Planner", "Grid Basic", "Pink Template", "Blue Template", "Weekly Planner"]
    
    let columns = [GridItem(.adaptive(minimum: 130))]
    
    @State var isClicked : Bool = false
    
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
            .navigationBarItems(leading: Button{
            } label: {
                Text("Edit")
            }, trailing: Button{
                self.isClicked = true
            } label: {
                Image(systemName: "plus")
            })
        }
        .foregroundColor(.green)
//        .sheet(isClicked: $isClicked, content: {
//            ModalEditCanvas(isClicked: $isClicked)
//        })

    }
}

struct Canvas_Previews: PreviewProvider {
    static var previews: some View {
        Canvas()
    }
}
