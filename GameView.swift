//
//  GameView.swift
//  Roadmap
//
//  Created by Misan Etchie on 04/12/2022.
//

import SwiftUI

import AVFoundation

var player: AVAudioPlayer!

func playSound(name: String) {
    let url = Bundle.main.url(forResource: name, withExtension: "mp3")
    player = try! AVAudioPlayer(contentsOf: url!)
    player.numberOfLoops =  -1
    player.play()
            
}

var storyBrain = StoryBrain()

struct GameView: View {
    
    @State private var storyNumber = 0
    @State private var backdrop = "bg1"
    @State var playing: Bool
    
    func speaker() -> String {
        if playing == true {
            return "speaker.slash.fill"
        } else {return "speaker.wave.2.fill"}
    }
    
    @Environment(\.presentationMode) var presentationMode
    
    var character: Character
    
    var body: some View {
        
        let story = StoryBrain.all[storyNumber]
        let nextStory = StoryBrain.all[story.choice1Destination]
        //let nextStory = StoryBrain.all[story.choice2Destination].bg
        //let bg = StoryBrain.all[storyNumber].bg
        
        
        GeometryReader {geo in
        
        VStack {
            
            HStack {
                Button(
                    action:{
                        self.presentationMode.wrappedValue.dismiss()
                        player.stop()
                        //print(UIScreen.main.bounds.width)
                        //if playing == false {playSound(name: "bgMusic")}
                    }) {
                    Image(systemName: "house")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(width: 25, height: 25).padding(10).background(Color(.black).opacity(0.2)).cornerRadius(30)
                }
                
                Spacer()
                
                Button(action: {
                    
                    if playing == true {
                        player.stop()
                        playing = false
                    } else {
                        player.play()
                        playing = true
                    }
                    
                }) {
                    Image(systemName: speaker())
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(width: 25, height: 25).padding(10).background(Color(.black).opacity(0.2)).cornerRadius(30)
                }
            }.padding()
            
            //getView(story: story, character: character)
            
            
            if (story.type == "TypeOneCard") {
                TypeOneCard(story: story)
            } else if (story.type == "TypeTwoCard") {
                TypeTwoCard(story: story, character: character)
            } else if (story.type == "TypeThreeCard") {
                TypeThreeCard(story: story)
            }
            
            if story.choice1 == "THE END" {
                
                
                Button(
                    action:{
                    self.presentationMode.wrappedValue.dismiss()
                        player.stop()
                    //if playing == false {playSound(name: "bgMusic")}
                }
                ){
                    
                        
                    Text("Play Again").foregroundColor(Color.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("pink"))
                        .cornerRadius(15).padding(.horizontal)
                        
                }
            } else {
                
                Button(action: {
                    backdrop = StoryBrain.all[story.choice1Destination].bg
                storyNumber = story.choice1Destination
            }, label: {
                Text(story.choice1).foregroundColor(Color.black)
                
                    .padding()
                
                    .frame(maxWidth: .infinity)
                    .background(.white)
                        .cornerRadius(15).padding(.horizontal)
                
            })
            
            
            if (story.multipleOption == true) {
                
                Button(action: {
                    backdrop = StoryBrain.all[story.choice2Destination].bg
                    storyNumber = story.choice2Destination
                }, label: {
                    Text(story.choice2).foregroundColor(Color.black)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.white)
                        .cornerRadius(15).padding(.horizontal)
                })//.padding(.bottom, 20)
                
            }}
            
            
            Spacer()
        }
        }.background(
            Image(backdrop)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height).overlay(Color.black.opacity(0.2))
        ).navigationBarTitle("",  displayMode: .inline)
            .navigationBarHidden(true).onAppear(perform: {playSound(name: "bgMusic")})
    }
}

/*func choice1Pressed (story: Story, character: Character) {storyNumber = story.choice1Destination
    
    getView(story: story, character: character)
}

func choice2Pressed () {
    storyNumber = story.choice2Destination}*/

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(playing: true, character: Character.all[1])
    }
}
