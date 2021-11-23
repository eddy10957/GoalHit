import SwiftUI

struct TabBar: View {
    
    @AppStorage("showOnBoarding") var showOnBoarding = true
    
    var body: some View {
        
        TabView() {
            Goals().tabItem {
                Image(systemName: "target")
                Text("Goals")
            }
            .tag(1)
            Rewards().tabItem {
                Image(systemName: "gift")
                Text("Rewards")
            }
            .tag(2)
            Canvas().tabItem {
                Image(systemName: "book")
                Text("Canvas")
            }
            .tag(3)
        }
        //.accentColor(.green)
        .sheet(isPresented: $showOnBoarding, content: {
            Onboarding(isPresented: $showOnBoarding)
        })
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
