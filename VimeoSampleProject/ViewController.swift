//
//  ViewController.swift
//  VimeoSampleProject
//
//  Created by Antonio Orozco on 2/7/20.
//  Copyright © 2020 Antonio Orozco. All rights reserved.
//

import UIKit
import PlayerKit
import AVFoundation

class ViewController: UIViewController {
    
    private struct Constants {
        static let VideoURL = URL(string: "https://player.vimeo.com/external/389308711.sd.mp4?s=01f1a97e6a0f6d1c3fb2bf7fe8e3d770567227b1&profile_id=164")!
    }
        

    private var player = RegularPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player.view.frame = self.view.bounds

        self.view.insertSubview(player.view, at: 0)
        
        player.set(AVURLAsset(url: Constants.VideoURL))

        player.play()
        
    }


}

