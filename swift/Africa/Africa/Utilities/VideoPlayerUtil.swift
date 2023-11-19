//
//  VideoPlayerUtil.swift
//  Africa
//
//  Created by John Rey on 11/20/23.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(file fileName: String, ext fileExtension: String) -> AVPlayer {
	let fileURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension)
	
	if fileURL != nil {
		videoPlayer = AVPlayer(url: fileURL!)
		videoPlayer?.play()
	}
	
	return videoPlayer!
}
