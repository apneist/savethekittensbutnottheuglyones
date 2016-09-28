//
//  ViewController.swift
//  SaveTheKittensExceptTheHairlessOnes
//
//  Created by Filippos Katsilidis on 27/09/2016.
//  Copyright © 2016 FilKats. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet var scrollView: UIScrollView!
        var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var contentWidth: CGFloat = 0.0
        
            for x in 0...2 {
        
                let image = UIImage(named: "icon\(x).jpg")
                let imageView = UIImageView(image: image)
                images.append(imageView)
        
      
        
        var newX: CGFloat = 0.0
        
        newX = view.frame.midX + view.frame.size.width * CGFloat(x)
                
        scrollView.addSubview(imageView)
                
        imageView.frame = CGRect(x: newX, y: (view.frame.size.height / 2) - 75, width: 150, height: 150)
            
        
        resultLabel.text = "This has \(images.count) pictures"
                
            
                  }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

