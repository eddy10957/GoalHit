//
//  ModalEditCanvas.swift
//  Bullet_V1
//
//  Created by Marta Formisano on 22/11/21.
//

import SwiftUI

struct ModalEditCanvas: View {
    
    @Binding var isClickedForModal : Bool
    
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
                                    .foregroundColor(.primary)
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
                                    .foregroundColor(.primary)
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
                                    .foregroundColor(.primary)
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
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                    
                    
                }
                .padding()
                .foregroundColor(.primary)
                
            } .padding()
                .navigationTitle("Canvas")
                .navigationBarItems(leading:
                                        Button{
                    isClickedForModal.toggle()
                    print(Text("premuto"))
                    
                } label: {
                    Text("Cancel")
                    
                })
        }
        .foregroundColor(.green)
    }
}

public struct ModalEditCanvasUp : View{
    
    @Binding var isClickedForModal : Bool
      
    
    public var body: some View{
        VStack{
            ModalEditCanvas(isClickedForModal: $isClickedForModal)
        }
    }
}

/*struct ModalEditCanvas_Previews: PreviewProvider {
 static var previews: some View {
 ModalEditCanvas()
 }
 }*/
