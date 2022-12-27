//
//  CharacterList.swift
//  Roadmap
//
//  Created by Misan Etchie on 04/12/2022.
//

import SwiftUI

struct CharacterList: View {
    var characters: [Character]
    var body: some View {
        
        
        VStack{
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150), spacing: 10)], spacing: 30) {
                ForEach(characters) {
                    character in
                    NavigationLink(destination: GameView(playing: true, character: character)) {CharacterCard(character: character)}
                }
            }
            .padding(.top)
            
            Spacer()
            
        }.padding(.horizontal)
    
        
    }
}

struct CharacterList_Previews: PreviewProvider {
    static var previews: some View {
        CharacterList(characters: Character.all)
    }
}
