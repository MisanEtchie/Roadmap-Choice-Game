//
//  CharacterPicker.swift
//  Roadmap
//
//  Created by Misan Etchie on 04/12/2022.
//

import SwiftUI

struct CharacterPicker: View {
    
    @Environment(\.presentationMode) var presentationMode
    
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
                    .foregroundColor(.black)
                    .frame(width: 20, height: 20).padding(10)
            }
                
                Text("Choose Your Character!").font(.title2).fontWeight(.medium)//.padding(.horizontal)
        
                Spacer()
            }
            ScrollView {
                CharacterList(characters: Character.all)
            }
        }
        .navigationBarTitle("")
                .navigationBarHidden(true)
        }.navigationBarTitle("")
            .navigationBarHidden(true)
        
    }
}

struct CharacterPicker_Previews: PreviewProvider {
    static var previews: some View {
        CharacterPicker()
    }
}
