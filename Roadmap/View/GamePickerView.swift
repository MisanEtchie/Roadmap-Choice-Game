//
//  GamePickerView.swift
//  Roadmap
//
//  Created by Misan Etchie on 03/09/2023.
//


import SwiftUI

struct GamePickerView: View {
    
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
                
                Text("Pick Your Game!").foregroundColor(.black).font(.title2).fontWeight(.medium)//.padding(.horizontal)
        
                Spacer()
            }
            ScrollView {
                CharacterList(characters: Character.all)
            }
        }
        .background(Color.white)
        .navigationBarTitle("")
                .navigationBarHidden(true)
        }.navigationBarTitle("")
            .navigationBarHidden(true)
        
    }
}

struct GamePickerView_Previews: PreviewProvider {
    static var previews: some View {
        GamePickerView()
    }
}
