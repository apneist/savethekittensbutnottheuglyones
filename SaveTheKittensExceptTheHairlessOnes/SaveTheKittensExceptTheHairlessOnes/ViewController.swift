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
        
    
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        var contentWidth: CGFloat = 0.0
        
        
        for x in 0...2 {
            
            let image = UIImage(named: "icon\(x).jpg")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            
            
            var newX: CGFloat = 0.0
            
            newX = scrollView.frame.size.width / 2 + scrollView.frame.size.width * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
            
            
            resultLabel.text = "This has \(images.count) pictures"
            
            
            print ("SCROLLVIEWWWWWWWWWWWW\(scrollView.frame.size.width)")
            
            
        }
        
        
        
        scrollView.contentSize = CGSize(width: contentWidth - 300, height: scrollView.frame.size.height)
        
        scrollView.clipsToBounds = false
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

