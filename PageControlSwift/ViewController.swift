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
    
    @objc func goToHomeScreen(){
        let homeVc = HomeViewController.loadFromNib()
                appDelegate.window = UIWindow(frame: UIScreen.main.bounds)
                  appDelegate.window?.rootViewController = UINavigationController(rootViewController: homeVc)
                  appDelegate.window?.backgroundColor = UIColor.white
                  appDelegate.window?.makeKeyAndVisible()
    }
}

//View pager data source
extension ViewController:ViewPagerDataSource{
    func numberOfItems(viewPager: ViewPager) -> Int {
        4
    }
    
    func viewAtIndex(viewPager: ViewPager, index: Int, view: UIView?) -> UIView {
        let carouselView = CarouselPageView.loadFromNib()
        carouselView.buttonDone.isHidden = true
        carouselView.carouselImageView.image = UIImage(named: "carousel\(index+1)")
        if index == 3{
            carouselView.buttonDone.isHidden = false
        }
        
        carouselView.buttonDone.addTarget(self, action: #selector(goToHomeScreen), for: .touchUpInside)
        carouselView.buttonSkip.addTarget(self, action: #selector(goToHomeScreen), for: .touchUpInside)

        return carouselView
    }
    
    func isPageControlVisible() -> Bool {
        return false
    }
}
