import SwiftUI
import CoreData

struct ContentView: View {
    //@Environment(\.managedObjectContext) private var viewContext
    
    @State var show_OnBoarding = true
    @State var savedState = false
    // CONTROLLARE SIA STO USERDATA CHE STO @APPSTORAGE PER FIRST ONBOARDING
    //@AppStorage ("Cose") var coseSalvataggio = false
    
    var body: some View {
        NavigationView {
            ZStack{
                
            }
        }
        .onAppear(perform: {show_OnBoarding = true})
        //.sheet(isPresented: $savedState, content: {
        //    Onboarding(isPresented: $savedState)
        //})
        .sheet(isPresented: $show_OnBoarding, content: {
            Onboarding(isPresented: $show_OnBoarding)
        })
    }
    /* FUNZIONI CHE HO VISTO SULL'INTERNETTE MA BHO
    func saveData(){
        UserDefaults.standard.set(self.show_OnBoarding, forKey: "StatusOnBoarding")
    }
    
    func getData(){
        savedState = UserDefaults.standard.bool(forKey: "StatusOnBoarding")
    }
    */
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
