//
//  ContentView.swift
//  Loufy
//
//  Created by Louisi Dalazen on 03/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
           
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "music.note.house")
                }
           
//            HomeView()
//                .tabItem {
//                    Label("Buscar", systemImage: "magnifyingglass")
//                }
            PlaylistsView(playlists: playlists)
                .tabItem {
                    Label("Playlists", systemImage: "music.note.list")
                }
        }.accentColor(Color.onprimary)
    }
}

#Preview {
    ContentView()
}
