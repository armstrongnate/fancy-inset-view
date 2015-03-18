//
//  ViewController.swift
//  FancyInsetViewDemo
//
//  Created by Nate Armstrong on 3/18/15.
//  Copyright (c) 2015 Nate Armstrong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var myView: FancyInsetView!

  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = UIColor(patternImage: UIImage(named: "pattern-bg")!)
    myView.cornerRadius = 5.0
  }

}

