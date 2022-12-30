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

    private func playVideo(url:NSURL)
    {
        let playcontroller = AVPlayerViewController()
        let player = AVPlayer(url:url as URL)
        playcontroller.player = player
        self.present(playcontroller, animated: true){
            player.play()
        }
    }
    @IBAction func btnPlayInternalMovie(_ sender: Any) {
        NSLog("btnPlayInternal")
                
        let filePath: String? = Bundle.main.path(forResource: "fishbread", ofType: "mp4")
        let url = NSURL(fileURLWithPath: filePath!)
        playVideo(url: url)
    }
    @IBAction func btnPlayExternalMovie(_ sender: Any) {
        NSLog("btnPlayExtenra")
        let playcontroller = AVPlayerViewController()
        //https://drive.google.com/file/d/1M76O2SE3X8fVuXY5u4-9oUsQ4nuGd9r8/view?usp=share_link
        //https://drive.google.com/drive/folders/1Ahf9ULsY3R3P7hnm6IEqI_fFXfX_6zHr?usp=share_link
        let videoURL = "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"
        
        //유투브 영상의 url을 가져와서 재생을 할 수 없다.
        let url = NSURL(string:videoURL)! 
        //let url = NSURL(string:"https://drive.google.com/drive/folders/1Ahf9ULsY3R3P7hnm6IEqI_fFXfX_6zHr/cars.mp4")!
        //let url = NSURL(string: "https://www.youtube.com/watch?v=szG10Ugne-8")!
        
        playVideo(url: url)
        
    }
}

