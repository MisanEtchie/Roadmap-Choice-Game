//
//  TypeOneCard.swift
//  Roadmap
//
//  Created by Misan Etchie on 05/12/2022.
//

import SwiftUI

struct TypeOneCard: View {
    var story: Story
    var body: some View {
        VStack {
            
            Text(story.title)
                .frame(maxWidth: .infinity)
            
            .padding()
            .padding(.vertical, 20)
            
            .frame(maxWidth: .infinity)
            .background(.white)
                .cornerRadius(15).padding()
        
        }.padding(.top, (UIScreen.main.bounds.height/3) - 30)
        
    }
}

struct TypeOneCard_Previews: PreviewProvider {
    static var previews: some View {
        TypeOneCard(story: StoryBrain.all[0])
    }
}
