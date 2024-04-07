//
//  PlaylistsView.swift
//  Loufy
//
//  Created by Louisi Dalazen on 03/04/24.
//

import SwiftUI

struct PlaylistsView: View {
    
    @State var playlists : Array<Playlist>

    var body: some View {
        NavigationStack{
            ZStack {
                Rectangle().fill( LinearGradient(gradient: Gradient(colors: [Color.bg1, Color.bg2, Color.bg]), startPoint: .top, endPoint: .bottom)).ignoresSafeArea()
                
                ScrollView {
                    VStack(alignment: .leading){
                        Text("Playlists").font(.title.bold()).foregroundStyle(Color.contrast).padding()
                        ForEach(playlists) { playlist in
                            
                            NavigationLink(destination: PlaylistView(playlist: playlist)) {
                                ZStack {
                                    Color(Color.bg.opacity(0.8))
                                    HStack(alignment: .center) {
                                        
                                        AsyncImage(url: URL(string: playlist.capa)){
                                            image in image.resizable()
                                        } placeholder: {
                                            ZStack {
                                                Rectangle().fill(.gray.opacity(0.3))
                                                Image(systemName: "music.note").foregroundColor(Color.contrast)
                                            }
                                        }
                                        .scaledToFill()
                                        .frame(width: 80, height: 80)
                                        .clipped().cornerRadius(5)
                                        
                                        VStack(alignment: .leading){
                                            Text(playlist.name).font(.headline).foregroundStyle(Color.contrast)
                                            Text("\(playlist.songs.count) músicas").foregroundStyle(Color.contrast.opacity(0.6))
                                        }
                                        
                                        Spacer()
                                        
                                        Image(systemName: "ellipsis").foregroundStyle(Color.contrast)
                                        
                                    }.padding(10)
                                }.cornerRadius(10).padding(.horizontal)
                            }
                           
                        }
                    }
                }.padding(.vertical)
            }
        }
    }
}

#Preview {
    PlaylistsView(playlists: playlists)
}
