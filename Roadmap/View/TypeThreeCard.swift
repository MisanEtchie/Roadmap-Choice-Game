//
//  TypeThreeCard.swift
//  Roadmap
//
//  Created by Misan Etchie on 05/12/2022.
//

import SwiftUI

struct TypeThreeCard: View {
    var story: Story
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                Image(String(story.image))
                    .resizable()
                    .frame(width: (UIScreen.main.bounds.width/2.5), height: (UIScreen.main.bounds.width/2.5))
                    .foregroundColor(.white)
                    //.padding(0)
                    //.background(Color.green)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
            }.padding()
            
            VStack {
                
                HStack{
                    Spacer()
                    
                    Text (story.speaker).font(.title3).bold().padding()
                }//.padding(.horizontal)
                
                HStack {
                    Spacer()
                    Text(story.title)
                    
                        .padding(.horizontal)
                        .padding(.bottom, 30)
                      .background(Color.white)
                }
                
                
                  
            }.frame(maxWidth: .infinity)
                .background(.white)
                    .cornerRadius(15).padding()
            
       
            
        }.padding(.top, UIScreen.main.bounds.height/3 - 230)
    }
}

struct TypeThreeCard_Previews: PreviewProvider {
    static var previews: some View {
        TypeThreeCard(story: StoryBrain.all[27])
    }
}
