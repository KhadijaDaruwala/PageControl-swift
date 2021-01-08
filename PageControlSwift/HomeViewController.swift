//
//  HomeViewController.swift
//  PageControlSwift
//
//  Created by Khadija's Macbook Pro on 08/01/21.
//  Copyright © 2021 Khadija's Macbook Pro. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    static func loadFromNib() -> HomeViewController{
        return HomeViewController(nibName: "HomeViewController",
                                        bundle: nil)
    }

}
