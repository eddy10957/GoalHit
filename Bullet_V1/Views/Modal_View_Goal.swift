//
//  Modal_View_Goal.swift
//  Bullet_V1
//
//  Created by Francesco Maria Di Donna on 18/11/21.
//

import Foundation
import SwiftUI

struct Modal_View_Goal_Element : View{
    //    TODO: prendere le info dell oggetto senza ridichiararlo EnvironmentObject ??

    //Collego le variabili ma vanno sostituite con il backend
    @ObservedObject var studyGoal1 = Study_Class(nameGoal: "Math Exam", colorGoal: .blue, badgeGoal: "🎓", percentageGoal: 0.30, dueDate: "17-12-2021", hourAmount: 30.0, studiedHours: 9.0)
    
    //TODO: NON HO CAPITO LO STEPPER
    @State var hour_value : Int = 20
    @Binding var isPressedForModal : Bool
    
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
                                .foregroundColor(studyGoal1.colorGoal)
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
                            Text("\(studyGoal1.dueDate)")
                        }
                        .padding()
                        HStack{
                            Text("Hour Amount:") // altra variabile
                            Spacer() // lo scrivo ma in realtà già la sappiamo
                            Text("\(Int(studyGoal1.hourAmount))") // qua va la variabile
                                .padding()
                        }
                        .padding(.leading)
                        VStack{
                            CircularProgressBar(progress: $studyGoal1.percentageGoal, color: $studyGoal1.colorGoal)
                                .frame(width: 200, height: 200)
                            
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
                
                .navigationBarTitle(Text("NameGoal"), displayMode: .inline)
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
            ModalViewEdit(edit: $edit)
        }
    }
}

public struct OnBoardingModalGoal : View{
    
    @Binding var isPressedForModal : Bool
    
    
    public var body: some View{
        VStack{
            Modal_View_Goal_Element(isPressedForModal: $isPressedForModal)
        }
    }
}



/*struct Modal_View_Goal_Element_Previews: PreviewProvider {
    static var previews: some View {
        Modal_View_Goal_Element()
    }
}*/
