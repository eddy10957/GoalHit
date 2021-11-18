import SwiftUI

struct Goals: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    GoalCardBig()
                    VStack{
                        HStack{
                            GoalCard()
                            GoalCard()
                        }
                        HStack{
                            GoalCard()
                            GoalCard()
                            
                        }
                    }
                }
            }
            .navigationTitle("Goals")
        }
    }
}

struct Goals_Previews: PreviewProvider {
    static var previews: some View {
        Goals()
    }
}
