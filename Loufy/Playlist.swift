//
//  Playlist.swift
//  Loufy
//
//  Created by Louisi Dalazen on 03/04/24.
//

import Foundation

//https://www.hackingwithswift.com/forums/swiftui/playing-sound/4921

struct Playlist : Identifiable{
    var id : Int
    var name : String
    var capa : String
    var songs : Array<Song>
}
