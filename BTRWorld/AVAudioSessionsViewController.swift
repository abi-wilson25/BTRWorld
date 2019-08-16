//
//  AVAudioSessionsViewController.swift
//  BTRWorld
//
//  Created by Apple on 8/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import AVFoundation

class AVAudioSessionsViewController: UIViewController {
    //let urlPath = Bundle.main.path(forResource: "Boyfriend", ofType: "mp3")!
    var bfAudio = AVAudioPlayer()
    
    //  session.setCategory(AVAudioSessions.Category.playback, mode: .default, policy: .longForm, options: .[])
    


    @IBAction func audioButton(_ sender: Any) {
    
    
        
        guard let path = Bundle.main.path(forResource: "Boyfriend", ofType: "mp3")
            
            else {
                return
        }
        
        let urlBoyfriend = URL(fileURLWithPath: path)
        
        bfAudio = try! AVAudioPlayer(contentsOf: urlBoyfriend, fileTypeHint: nil)
        bfAudio.prepareToPlay()
        bfAudio.play()
    }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
