//
//  Canvas_View.swift
//  Bullet_V1
//
//  Created by Marta Formisano on 19/11/21.
//

import Foundation
import SwiftUI

struct CanvasCard: View {
    
    var imageCard : String
    var nameCard : String
    
    var body: some View {
        
            VStack {
                ZStack(alignment: .center){
                    Image(imageCard)
                    RoundedRectangle(cornerRadius: 12)
                        .strokeBorder(.gray)
                        .frame(width: 119, height: 127)
                }
                Text(nameCard)
                    .font(.system(size: 16))
        }
    }
}

/*struct Canvas_Card_Previews: PreviewProvider {
    static var previews: some View {
        CanvasCard()
    }
}*/
