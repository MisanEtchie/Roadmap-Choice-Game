//
//  WelcomeView.swift
//  Roadmap
//
//  Created by Misan Etchie on 22/12/2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
        VStack{
            
            Spacer()
            
            HStack {
                
                Image(systemName: "sparkles")
                    .font(.system(size: 60).bold()).foregroundColor(Color(.white))
                
                Text("Roadmap")
                 .font(.system(size: 60.0))
                 .bold().foregroundColor(Color.white)
            }
            
            Spacer()
            
            NavigationLink(
                destination: CharacterPicker()) {
                    
                    Text("Play").font(.title3).bold().foregroundColor(Color.black)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.white)
                            .cornerRadius(15)
                }
            
            Text("Images from avatarmaker.com, Music from Pixabay.com").font(.caption2).foregroundColor(Color.white).padding(.vertical, 20)
            
        } .padding()
            .background(
            Image("bgColor")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                //.overlay(Color.black.opacity(0.2))
        )
    }.navigationBarTitle("")
            .navigationBarHidden(true)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
