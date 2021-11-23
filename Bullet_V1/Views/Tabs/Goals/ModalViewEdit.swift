//
//  Modal_View_Goal.swift
//  Bullet_V1
//


import Foundation
import SwiftUI

struct ModalViewEdit : View{

    @Binding var edit : Bool
    @ObservedObject var modalGoalEdit : StudyClass
    @State var dueDate = Date()

    
    var body: some View{
        NavigationView{
            Form{
                Section{
                    HStack{
                        
                        Text("Goal Name:")
                            .padding(.leading)
                        
                        
                        TextField("\(modalGoalEdit.nameGoal)",text: $modalGoalEdit.nameGoal)
                            .font(.system(size: 20))
                            .foregroundColor(.primary)
                            .multilineTextAlignment(.trailing)
                    }
                }
                Section{
                    HStack{
                        
                        Text("Color")
                            .padding(.leading)
                        Circle()
                            .fill()
                            .foregroundColor(modalGoalEdit.colorGoal)
                            .frame(width: 50, height: 50)
                        
                        ColorPicker("Change Goal Color", selection: $modalGoalEdit.colorGoal)
                            .padding()
                    }
                    HStack{
                        Text("Badge")
                            .padding(.leading)
                        TextField(
                            "\(modalGoalEdit.badgeGoal)",text: $modalGoalEdit.badgeGoal)
                            .font(.system(size: 50))
                            .multilineTextAlignment(.trailing)
                        
                    }
                }
//                TODO: far funzionare il passaggio di date
                DatePicker("Due Date for your goal", selection: $dueDate, displayedComponents: .date)
                    .datePickerStyle(CompactDatePickerStyle())
                
                
                    .padding()
                
                
                HStack{
                    Text("Hour Amount Goal:")
                        .padding(.leading)
                    
                    TextField("\(modalGoalEdit.hourAmount)", value: $modalGoalEdit.hourAmount, formatter: NumberFormatter())
                    //                            .font(.system(size: 20))
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.trailing)
                        .keyboardType(.numberPad)
                }
                
                .padding()
            }
            .navigationBarTitle(Text("\(modalGoalEdit.nameGoal)"), displayMode: .inline)
            .navigationBarItems(
                leading:
                    Button{
                        edit = false
                    } label: {
                        Text("Cancel")
                    },
                trailing:
                    Button{
                        edit = false
                    } label: {
                        Text("Done")
                    })
            .foregroundColor(.green)
        }
    }
}

/*struct Modal_View_Goal : View{
 
 @Binding var isShowedModalGoal : Bool
 var body: some View{
 
 }
 }
 */

//FUTURE IMPLEMENTATION!

//extension Character {
//    var isSimpleEmoji : Bool {
//        guard let firstScalar = unicodeScalars.first else { return false}
//        return firstScalar.properties.isEmoji && firstScalar.value > 0x238C
//    }
//    var isCombinedIntoEmoji : Bool {unicodeScalars.count > 1 && unicodeScalars.first?.properties.isEmoji ?? false}
//
//    var isEmoji: Bool { isSimpleEmoji || isCombinedIntoEmoji }
//}


//struct ModalViewEdit_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalViewEdit()
//    }
//}
