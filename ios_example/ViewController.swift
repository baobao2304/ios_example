//
//  ViewController.swift
//  ios_example
//
//  Created by Bao Pham on 09/11/2024.
//

import UIKit

class ViewController: UIViewController {
    var isYellow: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
    
}

