//
//  LevelPicker.swift
//  Roadmap
//
//  Created by Misan Etchie on 11/04/2024.
//

import Foundation
import SwiftUI


struct LevelPicker: View {
    
    @AppStorage("pickedCharacter") var pickedCharacter: String?
   
    
    @Environment(\.presentationMode) var presentationMode
    
    var character: Character
   
    
    var body: some View {
        
        
        NavigationView {
        VStack {
            HStack {
                
                Button(
                    action:{ self.presentationMode.wrappedValue.dismiss()
                        //print(UIScreen.main.bounds.width)
                    }) {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 20, height: 20).padding(10)
            }
                
                Text("Level").foregroundColor(.white).font(.title2).fontWeight(.medium)//.padding(.horizontal)
        
                Spacer()
            }
//            ScrollView {
//                CharacterList(characters: Character.all)
//            }
            
            CharacterCard(character: character)
            
           
            if let pickedCharacter = pickedCharacter {
                
                Image(pickedCharacter)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }
                            
            
            
            
            
            ForEach(Level.all, id: \.self) { level in
                               NavigationLink(destination: GameView(playing: true, selectedLevel: level.id, character: character)) {
                                   Text("\(level.name)")
                                       .foregroundColor(Color.black)
                                       .padding()
                                       .frame(maxWidth: .infinity)
                                       .background(Color.white.opacity(0.8))
                                       .cornerRadius(12).padding(.horizontal)
                               }
                           }
            
            
            
            Spacer()
        }
        .background(
            Image("level")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
              //  .overlay(Color.black.opacity(0.2))
        )
        .navigationBarTitle("")
                .navigationBarHidden(true)
        }.navigationBarTitle("")
            .navigationBarHidden(true)
        
    }
}

struct LevelPicker_Previews: PreviewProvider {
    static var previews: some View {
        LevelPicker(character: Character(image: "BW"))
    }
}

