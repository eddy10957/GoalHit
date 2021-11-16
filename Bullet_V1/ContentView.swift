import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @State var show_OnBoarding = false
    
    var body: some View {
        NavigationView {
            ZStack{
                
            }
        }
        .onAppear(perform: {show_OnBoarding = true})
        .sheet(isPresented: $show_OnBoarding, content: {
            Onboarding(isPresented: $show_OnBoarding)
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
