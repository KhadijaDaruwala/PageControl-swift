//
//  ViewController.swift
//  PageControlSwift
//
//  Created by Khadija's Macbook Pro on 08/01/21.
//  Copyright © 2021 Khadija's Macbook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var viewPagination: ViewPager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewPagination.sizeToFit()
        viewPagination.dataSource = self
    }
}

//View pager data source
extension ViewController:ViewPagerDataSource{
    func numberOfItems(viewPager: ViewPager) -> Int {
        4
    }
    
    func viewAtIndex(viewPager: ViewPager, index: Int, view: UIView?) -> UIView {
        let carouselView = CarouselPageView.loadFromNib()
        carouselView.carouselImageView.image = UIImage(named: "carousel\(index+1)")
        return carouselView
    }
    
    func isPageControlVisible() -> Bool {
        return false
    }
}
