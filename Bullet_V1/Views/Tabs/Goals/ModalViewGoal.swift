//
//  Modal_View_Goal.swift
//  Bullet_V1
//
//  Created by Francesco Maria Di Donna on 18/11/21.
//

import Foundation
import SwiftUI

struct ModalViewGoalElement : View{

 
    //TODO: NON HO CAPITO LO STEPPER
    @State var hour_value : Int = 20
    @Binding var isPressedForModal : Bool
    @ObservedObject var modalGoal : StudyClass
    
    @State var edit : Bool = false
    
    var body: some View{
        if !edit{
            NavigationView{
                VStack{
                    HStack {
                        VStack{
                            Text("Color")
                            Circle()
                                .fill()
                                .foregroundColor(modalGoal.colorGoal)
                                .frame(width: 50, height: 50)
                            
                        }
                        .padding(.trailing)
                        
                        VStack{
                            Text("Badge")
                            Text("🎓")
                                .font(.system(size: 50))
                        }
                        .padding()
                        Spacer()
                    }
                    .foregroundColor(.black)
                    .padding()
                    VStack{
                        HStack{
                            Text("Due Date:")
                            Spacer()
                            Text("\(modalGoal.dueDate)")
                        }
                        .padding()
                        HStack{
                            Text("Hour Amount:") // altra variabile
                            Spacer() // lo scrivo ma in realtà già la sappiamo
                            Text("\(Int(modalGoal.hourAmount))") // qua va la variabile
                                .padding()
                        }
                        .padding(.leading)
                        VStack{
                            CircularProgressBar(progressGoal: modalGoal)
                                .frame(width: 200, height: 200)
//                            CircularProgressBar(progress: modalGoal.percentageGoal, color: modalGoal.colorGoal)
//                                .frame(width: 200, height: 200)
                            
                        }
                        .padding()
                        VStack {
                            Text("Add Hours")
                            HStack {
                                Spacer()
                                Stepper("", value: $hour_value, in: 0...hour_value, step: 1)
                                    .frame(width: 100, height: 100)
                                Spacer()
                            }
                            .padding(.top, -30.0)
                        }
                    }
                    .foregroundColor(.black)
                    Spacer()
                }
                
                .navigationBarTitle(Text("\(modalGoal.nameGoal)"), displayMode: .inline)
                .navigationBarItems(
                    leading: Button{
                        self.isPressedForModal = false
                    } label: {
                        Text("Cancel")
                    }, trailing: Button{
                        self.edit = true
                    } label: {
                        Text("Edit")
                    })
                .foregroundColor(.green)
            }
        } else{
            ModalViewEdit(edit: $edit, modalGoalEdit: modalGoal)
        }
    }
}

public struct ModalGoal : View{
    
    @Binding var isPressedForModal : Bool
    @ObservedObject var modalGoal : StudyClass
    
    
    public var body: some View{
        VStack{
            ModalViewGoalElement(isPressedForModal: $isPressedForModal, modalGoal: modalGoal)
        }
    }
}



/*struct Modal_View_Goal_Element_Previews: PreviewProvider {
    static var previews: some View {
        Modal_View_Goal_Element()
    }
}*/
