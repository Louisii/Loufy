//
//  dados.swift
//  Loufy
//
//  Created by Louisi Dalazen on 03/04/24.
//

import Foundation

var playlists : Array<Playlist> = [
    albumAnimals,
    playlist1,
    albumAnimals,
    playlist1
]

var albumAnimals : Playlist = Playlist(id: 0, name:"Animals", capa: "https://upload.wikimedia.org/wikipedia/pt/4/4a/Pink_Floyd_-_Animals.jpg", songs: animalsSongs)

var animalsSongs = [
Song(id: 0, name: "Pigs on the Wing 1", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/pt/4/4a/Pink_Floyd_-_Animals.jpg", mp3: "PinkFloydPigsOnTheWing1"),
Song(id: 1, name: "Dogs", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/pt/4/4a/Pink_Floyd_-_Animals.jpg", mp3: "PinkFloydDogs"),
Song(id: 2, name: "Pigs (Three Different Ones)", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/pt/4/4a/Pink_Floyd_-_Animals.jpg", mp3: "PinkFloydPigsThreeDifferentOnes"),
Song(id: 3, name: "Sheep", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/pt/4/4a/Pink_Floyd_-_Animals.jpg", mp3: "PinkFloydSheep"),
Song(id: 4, name: "Pigs on the Wing 2", artist: "Pink Floyd", capa: "https://upload.wikimedia.org/wikipedia/pt/4/4a/Pink_Floyd_-_Animals.jpg", mp3: "PinkFloydPigsOnTheWing2"),
]

var playlist1 : Playlist = Playlist(id: 1, name: "For the first time", capa: "https://i.scdn.co/image/ab67616d0000b273d18fa8f63707115cb1b38f65", songs: macDeMarcoSongs);

var macDeMarcoSongs : Array<Song> = [
Song(id: 0, name: "For the first time", artist: "Mac DeMarco", capa: "https://i.scdn.co/image/ab67616d0000b273d18fa8f63707115cb1b38f65", mp3: "MacDeMarcoFortheFirstTime"),
Song(id: 2, name: "My kind of woman", artist: "Mac DeMarco", capa: "https://i.scdn.co/image/ab67616d0000b2739d377496c6bc8724b521222d", mp3: "MacDeMarcoMyKindofWoman")
]



//https://i.scdn.co/image/ab67616d0000b273d18fa8f63707115cb1b38f65
//https://i.scdn.co/image/ab67616d0000b2739d377496c6bc8724b521222d my kind of woman
