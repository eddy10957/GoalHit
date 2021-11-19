import SwiftUI

struct TabBar: View {
    var body: some View {
        
        TabView() {
           Goals().tabItem {
                Image(systemName: "target")
                Text("Goals")
            }.tag(1)
            
            Rewards().tabItem {
                Image(systemName: "gift")
                Text("Rewards")
            }.tag(2)
            
            Canvas().tabItem {
                Image(systemName: "book")
                Text("Canvas")
            }.tag(3)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
