//
//  Modal_View_Goal.swift
//  Bullet_V1
//

//

//Uso color picker perché è nativo e più semplice da utilizzare

import Foundation
import SwiftUI

struct ModalViewEdit : View{
    //    Diventa momentaneamente una string per poterla inserire nel text field velocemente poi faremo il casting in classe e amen
    @Binding var edit : Bool
    @State var hourAmount : String = "30"
    //Collego le variabili ma vanno sostituite con il backend
    @State var selectedColor: Color = .blue
    @State var badge : String = "🎓"
    @State var dueDate = Date()
    @State var goalName: String = "Math Exam"
    
    var body: some View{
        NavigationView{
            Form{
                Section{
                    HStack{
                        
                        Text("Goal Name:")
                            .padding(.leading)
                        
                        
                        TextField("\(goalName)",text: $goalName)
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.trailing)
                    }
                }
                Section{
                    HStack{
                        
                        Text("Color")
                            .padding(.leading)
                        Circle()
                            .fill()
                            .foregroundColor(selectedColor)
                            .frame(width: 50, height: 50)
                        
                        ColorPicker("Change Goal Color", selection: $selectedColor)
                            .padding()
                    }
                    HStack{
                        Text("Badge")
                            .padding(.leading)
                        TextField(
                            "\(badge)",text: $badge)
                            .font(.system(size: 50))
                            .multilineTextAlignment(.trailing)
                        
                    }
                }
                
                //                    TODO: Restyling picker ??
                DatePicker("Due Date for your goal", selection: $dueDate, displayedComponents: .date)
                    .datePickerStyle(CompactDatePickerStyle())
                
                
                    .padding()
                
                
                HStack{
                    Text("Hour Amount Goal:")
                        .padding(.leading)
                    
                    TextField("\(hourAmount)",text: $hourAmount)
                    //                            .font(.system(size: 20))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.trailing)
                }
                
                .padding()
            }
            .navigationBarTitle(Text("\(goalName)"), displayMode: .inline)
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
