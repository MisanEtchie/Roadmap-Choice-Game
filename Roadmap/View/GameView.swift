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
    @State private var backdrop = ""
    @State var playing: Bool
    var selectedLevel: Int
    
    func speaker() -> String {
        if playing == true {
            return "speaker.slash.fill"
        } else {return "speaker.wave.2.fill"}
    }
    
    @Environment(\.presentationMode) var presentationMode
    
    var character: Character
    
    var body: some View {
        
        let story = selectedLevel == 1 ? StoryBrain.all1[storyNumber] : StoryBrain.all2[storyNumber]

        //let nextStory = StoryBrain.all[story.choice1Destination]
       // //let nextStory = StoryBrain.all[story.choice2Destination].bg
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
                
                VStack {
                    
                    
                    if (story.type == "TypeOneCard") {
                        TypeOneCard(story: story)
                    } else if (story.type == "TypeTwoCard") {
                        TypeTwoCard(story: story, character: character)
                    } else if (story.type == "TypeThreeCard") {
                        TypeThreeCard(story: story)
                    } else if (story.type == "Background") {
                        BackgroundCard(story: story)
                    }
                    
                    if story.choices[0].0 == "THE END" {
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
                        
                        if (story.choices.count != 1) {
                        
                        
                        
                        LazyVStack {
                            VStack(spacing: 10) {
                                ForEach(story.choices.indices, id: \.self) { index in
                                    Button(action: {
                                        let nextStoryIndex = story.choices[index].1
                                        if selectedLevel == 1 {
                                            backdrop = StoryBrain.all1[nextStoryIndex].bg
                                        } else {
                                            backdrop = StoryBrain.all2[nextStoryIndex].bg
                                        }
                                        storyNumber = nextStoryIndex
                                    }) {
                                        Text(story.choices[index].0)
                                            .foregroundColor(Color.black)
                                            .padding()
                                            .frame(maxWidth: .infinity)
                                            .background(Color.white.opacity(0.8))
                                            .cornerRadius(12)
                                        //.padding(.horizontal)
                                    }
                                    .contentShape(Rectangle()) // Set the content shape to Rectangle for tap gesture to work on entire button area
                                    
                                }
                            }
                        }
                        .padding(.horizontal)
                        
                        
                        //                            Button(action: {
                        //                                backdrop = StoryBrain.all[story.choice1Destination].bg
                        //                                storyNumber = story.choice1Destination
                        //                            }, label: {
                        //                                Text(story.choice1).foregroundColor(Color.black)
                        //
                        //                                    .padding()
                        //
                        //                                    .frame(maxWidth: .infinity)
                        //                                    .background(.white)
                        //                                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        //                                    .cornerRadius(15).padding(.horizontal)
                        //
                        //                            })
                        //
                        //                            Button(action: {
                        //                                backdrop = StoryBrain.all[story.choice2Destination].bg
                        //                                storyNumber = story.choice2Destination
                        //                            }, label: {
                        //                                Text(story.choice2).foregroundColor(Color.black)
                        //                                    .padding()
                        //                                    .frame(maxWidth: .infinity)
                        //                                    .background(.white)
                        //                                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        //                                    .cornerRadius(15).padding(.horizontal)
                        //                            })//.padding(.bottom, 20)
                        
                        
                        
                    }
                    Spacer()
                    
                }
                        
                    
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    
                    if (story.choices.count == 1 && story.choices[0].0 != "THE END"){
                           let nextStoryIndex = story.choices[0].1
                           if selectedLevel == 1 {
                               backdrop = StoryBrain.all1[nextStoryIndex].bg
                           } else {
                               backdrop = StoryBrain.all2[nextStoryIndex].bg
                           }
                           storyNumber = nextStoryIndex
                       }
                    
                }
                
                
                
                
                
                
                
            }
        }.background(
            Image(story.bg)
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

//struct GameView_Previews: PreviewProvider {
//    static var previews: some View {
//        GameView(playing: true, character: Character.all[1])
//    }
//}
