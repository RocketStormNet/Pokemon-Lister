//
//  StatText.swift
//  Pokemon Lister
//
//  Created by Artur Shamsutdinov on 25.12.2019.
//  Copyright © 2019 Artur Shamsutdinov. All rights reserved.
//

import SwiftUI

struct StatText: View {
    
    var statName: String
    var statValue: String
    
    var body: some View {
        HStack {
            Text(statName + ":").font(.system(size: 25)).fontWeight(.bold).padding(.leading, 30)
            Text(statValue).font(.system(size: 25)).fontWeight(.light).padding(.trailing, 30)
            Spacer()
        }
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        StatText(statName: "Age", statValue: "32")
    }
}
