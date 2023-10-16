//
//  AudioPlayer.swift
//  Workbook
//
//  Created by John Rey on 10/17/23.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
	if let path = Bundle.main.path(forResource: sound, ofType: type, inDirectory: "Sounds") {
	   do {
		   audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
		   audioPlayer?.prepareToPlay()
		   audioPlayer?.play()
	   } catch let error {
		   print("Error initializing audio player: \(error.localizedDescription)")
	   }
   }
}
