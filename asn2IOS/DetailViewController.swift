//
//  DetailViewController.swift
//  asn2IOS
//
//  Created by Jason Sekhon on 2017-12-01.
//  Copyright © 2017 Jason Sekhon. All rights reserved.
//

import UIKit
import MarqueeLabel

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: MarqueeLabel!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.marqueeType = .MLContinuous
                label.scrollDuration = 60
                label.fadeLength = 10.0
                label.leadingBuffer = 30.0
                label.trailingBuffer = 20.0
                label.lineBreakMode = .byWordWrapping // or NSLineBreakMode.ByWordWrapping
                label.numberOfLines = 0
                label.text = String(detail.crawlText.characters.filter { !"\t\r\n".characters.contains($0) })
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Movie? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

