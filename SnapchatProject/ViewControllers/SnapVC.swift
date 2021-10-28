//
//  SnapVC.swift
//  SnapchatProject
//
//  Created by Ceren Çapar on 27.10.2021.
//

import UIKit
import ImageSlideshow

class SnapVC: UIViewController {
    @IBOutlet weak var timeLeftLabel: UILabel!
    
    var selectedSnap : Snap?
    var selectedTime : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let time = selectedTime {
        timeLeftLabel.text = "Time Left : \(time)"
        }
        
        if let snap = selectedSnap {
            for imageUrl in snap.imageUrlArray {
                
            }
            
            let imageSlideShow = ImageSlideshow(frame: CGRect(x: 10, y: 12, width: self.view.frame.width * 0.95, height: self.view.frame.height * 0.95))
            imageSlideShow.backgroundColor = UIColor.white
            imageSlideShow.contentScaleMode = UIViewContentMode.scaleAspectFit
            
            self.view.addSubview(imageSlideShow)
        }
    }
    

}
