//
//  PlaylistView.swift
//  Loufy
//
//  Created by Louisi Dalazen on 03/04/24.
//

import SwiftUI

struct PlaylistView: View {
    @State var playlist : Playlist
    
   
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle().fill( LinearGradient(gradient: Gradient(colors: [Color.bg1, Color.bg2, Color.bg]), startPoint: .top, endPoint: .bottom)).ignoresSafeArea()
                
                
                ScrollView{
                    VStack{
//                        
//                        Image("lofiPlaylistImg").resizable()
//                            .scaledToFill()
//                            .frame(width: 200, height: 200, alignment: .center)
//                            .clipped().cornerRadius(5).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).padding()
//                        
                        
                        AsyncImage(url: URL(string: playlist.capa)){
                            image in image.resizable()
                        } placeholder: {
                            ZStack {
                                Rectangle().fill(.gray.opacity(0.3))
                                Image(systemName: "music.note").foregroundColor(Color.contrast)
                            }
                        }
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                        .clipped().cornerRadius(5)
                        
                        HStack {
                            Text(playlist.name).foregroundStyle(Color.onprimary).font(.title2.bold()).padding()
                            Spacer()
                        }
                        
                        
                        
                        
                        ForEach(playlist.songs) { song in
                            
                            NavigationLink(destination: SongView(song: song)) {
                                ZStack {
                                    Color(Color.bg.opacity(0.8))
                                    HStack(alignment: .center) {
                                        
                                        AsyncImage(url: URL(string: song.capa)){
                                            image in image.resizable()
                                        } placeholder: {
                                            ZStack {
                                                Rectangle().fill(.gray.opacity(0.3))
                                                Image(systemName: "music.note").foregroundColor(Color.contrast)
                                            }
                                        }
                                        .scaledToFill()
                                        .frame(width: 50, height: 50)
                                        .clipped().cornerRadius(5)
                                        
                                        VStack(alignment: .leading){
                                            Text(song.name).font(.headline).foregroundStyle(Color.contrast)
                                            Text(song.artist).foregroundStyle(Color.contrast.opacity(0.8))
                                        }
                                        
                                        Spacer()
                                        
                                        Image(systemName: "ellipsis").foregroundStyle(Color.contrast)
                                        
                                    }.padding(10)
                                }.cornerRadius(10).padding(.horizontal)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PlaylistView(playlist: albumAnimals)
}
