//
//  AudioPlayer.swift
//  Loufy
//
//  Created by Louisi Dalazen on 03/04/24.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("ERROR")
        }
    }
}

func stopSound() {
    audioPlayer?.stop()
}


func pauseSound() {
    audioPlayer?.pause()
}


