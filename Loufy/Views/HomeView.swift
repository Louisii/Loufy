//
//  HomeView.swift
//  Loufy
//
//  Created by Louisi Dalazen on 03/04/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle().fill( LinearGradient(gradient: Gradient(colors: [Color.bg1, Color.bg2, Color.bg]), startPoint: .top, endPoint: .bottom)).ignoresSafeArea()
                VStack(alignment:.leading) {
                    Text("Hello, this is Loufy!").font(.title.bold()).foregroundStyle(Color.contrast).padding()
                    
                    ScrollView(.horizontal) {
                        HStack{
                            ForEach(playlists){playlist in
                                
                                NavigationLink(destination: PlaylistView(playlist: playlist)) {
                                    
                                    
                                    VStack(alignment: .leading) {
                                        
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
                                        Text(playlist.name).font(.headline).foregroundColor(Color.contrast)
                                        
                                    }.padding(10)
                                    
                                }
                                
                                
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
