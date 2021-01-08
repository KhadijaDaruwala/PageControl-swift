//
//  CarouselPageView.swift
//  PageControlSwift
//
//  Created by Khadija's Macbook Pro on 08/01/21.
//  Copyright © 2021 Khadija's Macbook Pro. All rights reserved.
//

import UIKit

class CarouselPageView: UIView {
    
    @IBOutlet weak var carouselImageView: UIImageView!
    
   static func loadFromNib() -> CarouselPageView{
        return Bundle.main.loadNibNamed("CarouselPageView",
                                        owner: self,
                                        options: nil)?.first as! CarouselPageView
    }
}
