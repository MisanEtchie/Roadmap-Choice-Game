//
//  CharacterCard.swift
//  Roadmap
//
//  Created by Misan Etchie on 04/12/2022.
//

import SwiftUI

struct CharacterCard: View {
    var character: Character
    
    var body: some View {
        
        Image(String(character.image // + "Happy"
                    ))
          .resizable()
          .frame(width: 150, height: 150)
          .foregroundColor(.white)
          //.padding(0)
          //.background(Color.green)
          .clipShape(Circle())
    }
}

struct CharacterCard_Previews: PreviewProvider {
    static var previews: some View {
        CharacterCard(character: Character.all[0])
    }
}
