//
//  SnapVC.swift
//  SnapchatProject
//
//  Created by Ceren Çapar on 27.10.2021.
//

import UIKit
import ImageSlideshow
import Kingfisher

class SnapVC: UIViewController {
    @IBOutlet weak var timeLeftLabel: UILabel!
    
    var selectedSnap : Snap?
    var inputArray = [KingfisherSource]()
    override func viewDidLoad() {
        super.viewDidLoad()
 
        
        if let snap = selectedSnap {
            timeLeftLabel.text = "Time Left : \(snap.timeDifference)"
            for imageUrl in snap.imageUrlArray {
                inputArray.append(KingfisherSource(urlString: imageUrl)!)
                
                
            }
            
            let imageSlideShow = ImageSlideshow(frame: CGRect(x: 10, y: 12, width: self.view.frame.width * 0.95, height: self.view.frame.height * 0.95))
            imageSlideShow.backgroundColor = UIColor.white
            
            let pageIndicator = UIPageControl()
            pageIndicator.currentPageIndicatorTintColor = UIColor.lightGray
            pageIndicator.pageIndicatorTintColor = UIColor.black
            imageSlideShow.pageIndicator = pageIndicator
            imageSlideShow.contentScaleMode = UIViewContentMode.scaleAspectFit
            imageSlideShow.setImageInputs(inputArray)
            self.view.addSubview(imageSlideShow)
            self.view.bringSubviewToFront(timeLeftLabel)
        }
    }
    

}
