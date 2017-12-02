//
//  Movie.swift
//  asn2IOS
//
//  Created by Jason Sekhon on 2017-12-01.
//  Copyright © 2017 Jason Sekhon. All rights reserved.
//

import UIKit

class Movie {
    var name: String
    var crawlText: String
    
    init?(name: String, crawlText: String){
        if (name.isEmpty || crawlText.isEmpty){
            return nil
        }
        self.name = name
        self.crawlText = crawlText
    }
}
