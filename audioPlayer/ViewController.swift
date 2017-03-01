//
//  ViewController.swift
//  audioPlayer
//
//  Created by Juraj Majerik on 01/03/2017.
//  Copyright © 2017 Juraj Majerik. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()

    @IBAction func play(_ sender: Any)
    {
        player.play()
    }
    
    @IBAction func pause(_ sender: AnyObject)
    {
        player.pause()
    }
    
    @IBAction func replay(_ sender: Any)
    {
        player.currentTime = 0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do
        {
            let audioPath = Bundle.main.path(forResource: "song", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
        {
            // ERROR
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

