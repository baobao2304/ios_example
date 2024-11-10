//
//  ViewController.swift
//  ios_example
//
//  Created by Bao Pham on 09/11/2024.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var isYellow: Bool = false
    var player: AVAudioPlayer!
    @IBOutlet weak var ship: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "spaceshipfly", ofType: "wav")
        let url = URL(fileURLWithPath: path!)
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError{
            print(error.description)
        }
    }

    @IBAction func onTapButtonEx1(_ sender: Any) {
       // Bấm control + giữ UI button -> trỏ qua bên view controller -> xuất hiện hộp thoại và đặt name cho biến
        if isYellow{
            view.backgroundColor = UIColor.white
               isYellow = false
           }else{
               view.backgroundColor = UIColor.yellow
               isYellow = true
           }
    }
    

    
    @IBAction func onButtonPressed(_ sender: Any) {
    
        if isYellow{
            self.ship.isHidden = true
            UIView.animate(withDuration: 1, animations: {
                self.ship.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            })
               isYellow = false
           }else{
               self.player.play()
               self.ship.isHidden = false
               UIView.animate(withDuration: 3, animations: {
                   self.ship.frame = CGRect(x: 50, y: 300, width: 300, height: 200)
               })
               isYellow = true
           }
     
        
    }
}

