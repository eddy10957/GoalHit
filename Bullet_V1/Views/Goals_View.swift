import SwiftUI

struct Goals: View {
    var body: some View {
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
        }
}

struct Goals_Previews: PreviewProvider {
    static var previews: some View {
        Goals()
    }
}
