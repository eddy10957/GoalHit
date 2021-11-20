import Foundation
import SwiftUI

struct OnboardingElement: View {
    
    var titleText: String
    var image: Image
    var subtitleText: String
    
    var body: some View {
        
        HStack {
            image
                .foregroundColor(.green)
                .font(.system(size: 70))
                .frame(width: 100)
            VStack {
                Text(titleText)
                    .font(.custom("SF Pro", size: 25))
                    .bold()
                    .frame(width: 250, alignment: .leading)
                Text(subtitleText)
                    .foregroundColor(.secondary)
                    .frame(width: 250, alignment: .leading)
                    
            }
            .padding(.bottom)
        }
    }
}


struct Onboarding: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Text("Welcome to\n GoalHit!")
                .font(.system(size: 45))
                .bold()
                .multilineTextAlignment(.center)
                .padding(.top)
                .padding(.top)
            VStack {
                OnboardingElement(titleText: "Canvas", image: Image(systemName: "book"), subtitleText: "Bullet is the place where you can store your memories, plans, events and so on in complete safety.")
                    
                
                OnboardingElement(titleText: "Goals", image: Image(systemName: "target"), subtitleText: "You can set up and keep track of your goals and achievements.")
                    .padding()
                
                OnboardingElement(titleText: "Reminder", image: Image(systemName: "pencil"), subtitleText: "You can create custom canvas.")
                    .padding()
                    
            }
            .frame(width: 350, height: 530, alignment: .center)
            .padding(.bottom)
            
            Button(action: {isPresented.toggle()}, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 300, height: 50)
                        .foregroundColor(.green)
                    Text("Continue")
                        .foregroundColor(.white)
                }
            })
                .padding(.bottom)
            Spacer()
        }
    }
}
