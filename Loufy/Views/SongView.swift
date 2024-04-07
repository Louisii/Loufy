//
//  SongView.swift
//  Loufy
//
//  Created by Louisi Dalazen on 03/04/24.
//

import SwiftUI

struct SongView: View {
    
    @State var song : Song
    @State var isPlaying : Bool = audioPlayer?.isPlaying ?? false
    
    var body: some View {
        ZStack{
            Rectangle().fill( LinearGradient(gradient: Gradient(colors: [Color.bg1, Color.bg2, Color.bg]), startPoint: .top, endPoint: .bottom)).ignoresSafeArea()
            
            VStack {
                Spacer()
                AsyncImage(url: URL(string: song.capa)){
                    image in image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipped().cornerRadius(5)
                
                Text(song.name).font(.title2.bold()).padding(.top)
                Text(song.artist).font(.title2)
                Spacer()
                HStack(spacing: 20){
                    Spacer()
                    Image(systemName: "shuffle").resizable().scaledToFit().frame(width: 30, height: 30)
                    Spacer()
                    Image(systemName: "backward.end.fill").resizable().scaledToFit().frame(width: 40, height: 40)
                    Image(systemName: isPlaying ? "pause.fill" : "play.fill" ).resizable().scaledToFit().frame(width: 40, height: 40).onTapGesture {
                        
                            isPlaying = !isPlaying
                        if(isPlaying){
                            playSound(sound: song.mp3, type: "mp3")
                            audioPlayer?.numberOfLoops = 1
                        }else{
                            pauseSound()
                        }
                    
                    }
                    Image(systemName: "forward.end.fill").resizable().scaledToFit().frame(width: 40, height: 40)
                    Spacer()
                    Image(systemName: "arrow.2.squarepath").resizable().scaledToFit().frame(width: 30, height: 30)
                    Spacer()
                }.padding()
                Spacer()
            }
            
        }
    }
}

#Preview {
    SongView( song: Song(id: 0, name: "musica1 musica1", artist: "artista1", capa: "https://i.scdn.co/image/ab67616d0000b2735419c0986ee778b7489da418", mp3: "PinkFloydPigsOnTheWing1"))
}
