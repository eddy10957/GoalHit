import SwiftUI

struct CircularProgressBar: View {
    
    @ObservedObject var progressGoal : GoalClass
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 15.0)
                .opacity(0.5)
                .foregroundColor(progressGoal.colorGoal)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(progressGoal.percentageGoal, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 15.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(progressGoal.colorGoal)
                .rotationEffect(Angle(degrees: 270.0))

            Text(String(format: "%.0f %%", min(progressGoal.percentageGoal, 1.0)*100.0))
                .font(.system(size: 48))
                .bold()
        }
    }
}
