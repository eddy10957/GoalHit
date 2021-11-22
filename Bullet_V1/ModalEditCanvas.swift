//
//  ModalEditCanvas.swift
//  Bullet_V1
//
//  Created by Marta Formisano on 22/11/21.
//

import SwiftUI

struct ModalEditCanvas: View {
    
    @Binding var isClicked : Bool
    
    let imageCardView1 = ["Rule Basic", "Green Template", "Daily Planner"]
    
    let imageCardView2 = ["Grid Basic", "Daily Planner", "Blue Template"]
    
    let imageCardView3 = ["Green Template", "Pink Template", "Weekly Planner"]
    
    let imageCardView4 = ["Daily Planner", "Rule Basic", "Grid Basic"]
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(alignment:.leading) {
                    
                    Text("Recent")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    
                    ScrollView (.horizontal) {
                        HStack{
                            ForEach(imageCardView1, id: \.self){ value in
                                CanvasCard(imageCard: value, nameCard: value)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    Text("Planners")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    
                    ScrollView (.horizontal) {
                        HStack{
                            ForEach(imageCardView2, id: \.self){ value in
                                CanvasCard(imageCard: value, nameCard: value)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    Text("Color")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    
                    ScrollView (.horizontal) {
                        HStack{
                            ForEach(imageCardView3, id: \.self){ value in
                                CanvasCard(imageCard: value, nameCard: value)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    Text("Basic")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    
                    ScrollView (.horizontal) {
                        HStack{
                            ForEach(imageCardView4, id: \.self){ value in
                                CanvasCard(imageCard: value, nameCard: value)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    
                }
                .padding()
                
            } .padding()
                .navigationTitle("Canvas")
                .navigationBarItems(leading:
                                        Button{
                    self.isClicked = false
                    
                } label: {
                    Text("Cancel")
                    
                })
        }
    }
}

/*struct ModalEditCanvas_Previews: PreviewProvider {
 static var previews: some View {
 ModalEditCanvas()
 }
 }*/
