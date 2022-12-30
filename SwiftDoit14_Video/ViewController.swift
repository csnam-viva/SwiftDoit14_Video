//
//  ViewController.swift
//  SwiftDoit14_Video
//
//  Created by 비바 on 2022/12/30.
//

import UIKit
import AVKit
import AVFoundation
class ViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnPlayInternalMovie(_ sender: Any) {
        NSLog("btnPlayInternal")
        
        let playcontroller = AVPlayerViewController()
        
        let filePath: String? = Bundle.main.path(forResource: "fishbread", ofType: "mp4")
        let url = NSURL(fileURLWithPath: filePath!)
        let player = AVPlayer(url:url as URL)
        playcontroller.player = player
        self.present(playcontroller,animated: true){
            player.play()
        }
        
    }
    @IBAction func btnPlayExternalMovie(_ sender: Any) {
        NSLog("btnPlayExtenra")
        
        
        
        
    }
}

