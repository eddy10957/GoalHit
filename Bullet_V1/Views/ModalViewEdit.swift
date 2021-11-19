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
    
    @State var hourAmount : String = "20"
    //Collego le variabili ma vanno sostituite con il backend
    @State var selectedColor: Color = .red
    @State var badge : String = "🎓"
    @State var dueDate = Date()
    @State var goalName: String = "Study Goal"
    
    var body: some View{
        NavigationView{
            VStack{
                VStack(alignment: .leading){
                    
                    VStack {
                        Text("Goal Name:")
                            .padding(.leading, 18.0)
                        
                        
                        TextField("\(goalName)",text: $goalName)
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                    }
                    VStack{
                        
                        Text("Color")
                        Circle()
                            .fill()
                            .foregroundColor(selectedColor)
                            .frame(width: 50, height: 50)
                        
                        ColorPicker("Change Goal Color", selection: $selectedColor)
                            .padding()
                    }
                    
                    Text("Badge")
                        .padding(.leading, 18.0)
                    TextField(
                        "\(badge)",text: $badge)
                        .font(.system(size: 50))
                        .padding()
                    
                    //                    TODO: Restyling picker ??
                    DatePicker("Due Date for your goal", selection: $dueDate, displayedComponents: .date)
                        .datePickerStyle(CompactDatePickerStyle())
                    
                        .padding()
                    
                    
                    
                    Text("Hour Amount Goal:")
                        .padding(.leading, 18.0)
                    
                    TextField("\(hourAmount)",text: $hourAmount)
                    //                            .font(.system(size: 20))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding()
            }
            .navigationBarTitle(Text("\(goalName)"), displayMode: .inline)
            .navigationBarItems(
                leading:
                    Button{
                        
                    } label: {
                        Text("Cancel")
                    },
                trailing:
                    Button{
                        
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


struct ModalViewEdit_Previews: PreviewProvider {
    static var previews: some View {
        ModalViewEdit()
    }
}
