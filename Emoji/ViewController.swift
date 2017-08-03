//
//  ViewController.swift
//  Emoji
//
//  Created by Josh Motley on 8/1/17.
//  Copyright © 2017 Josh Motley. All rights reserved.
//

import UIKit
import JOEmojiableBtn

class ViewController: UIViewController, JOEmojiableDelegate {

    var images = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        images = ["img_1", "img_2", "img_3", "img_4", "img_5", "img_6"]
        let categories = ["Food", "Atmosphere", "Comfort", "Location"]
        let config = JOEmojiableConfig(spacing: 2, size: 30, minSize: 34, maxSize: 45, s_options_selector: 0)
        
        for i in 0...3 {
            
            let button = JOEmojiableBtn(frame: CGRect(x: 20 ,y: 70 + i * 100, width: 60, height: 60), config: config)
            button.delegate           = self
            button.titleLabel?.font   = UIFont.systemFont(ofSize: 11)
            button.layer.cornerRadius = 30
            
            button.setImage(UIImage(named: "img_1"), for: .normal)
            button.dataset            = [
                JOEmojiableOption(image: "img_1", name: "dislike"),
                JOEmojiableOption(image: "img_2", name: "broken"),
                JOEmojiableOption(image: "img_3", name: "he he"),
                JOEmojiableOption(image: "img_4", name: "ooh"),
                JOEmojiableOption(image: "img_5", name: "meh!"),
                JOEmojiableOption(image: "img_6", name: "ahh!")
            ]
            self.view.addSubview(button)
            
            let label = UILabel(frame: CGRect(x: 20, y: 130 + i * 100, width: 300, height: 40))
            label.text = categories[i]
            self.view.addSubview(label)
        }
    }
    
    func singleTap(sender: JOEmojiableBtn) {
        
    }
    
    func selectedOption(sender: JOEmojiableBtn, index: Int) {
        
        let image = UIImage(named: images[index])
        sender.setImage(image, for: .normal)
    }
    
    func canceledAction(sender: JOEmojiableBtn) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

