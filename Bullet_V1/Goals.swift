import SwiftUI

struct Goals: View {
    var body: some View {
        
        VStack {
            Text("Goals")
                .font(.body)
                .foregroundColor(.green)
                .bold()
        }
    }
}

struct Goals_Previews: PreviewProvider {
    static var previews: some View {
        Goals()
    }
}
