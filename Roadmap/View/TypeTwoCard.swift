//
//  TypeTwoCard.swift
//  Roadmap
//
//  Created by Misan Etchie on 05/12/2022.
//

import SwiftUI

struct TypeTwoCard: View {
    var story: Story
    var character: Character
    var body: some View {
        VStack {
            
            HStack {
                Image(String(character.image + story.image))
                    .resizable()
                
                    .frame(width: (UIScreen.main.bounds.width/2.5), height: (UIScreen.main.bounds.width/2.5))
                    .foregroundColor(.white)
                    //.padding(0)
                    //.background(Color.green)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
                
                Spacer() 
            }.padding()
            
            VStack {
                
                HStack{
                    Text ("You").font(.title3).bold().padding()
                    Spacer()
                }//.padding(.horizontal)
                //.frame(maxWidth: .infinity)
                
                HStack {
                    Text(story.title)
                        
                        .padding(.horizontal)
                        .padding(.bottom, 30)
                      .background(Color.white)
                    Spacer()
                }.frame(maxWidth: .infinity)
                
            }.frame(maxWidth: .infinity)
                .background(.white)
                    .cornerRadius(15).padding()
            
       
            
        }.padding(.top, UIScreen.main.bounds.height/3 - 230)

    }
}

struct TypeTwoCard_Previews: PreviewProvider {
    static var previews: some View {
        TypeTwoCard(story: StoryBrain.all[1], character: Character.all[0])
    }
}
