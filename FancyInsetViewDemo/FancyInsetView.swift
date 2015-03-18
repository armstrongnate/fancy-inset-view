//
//  FancyInsetView.swift
//  FancyInsetViewDemo
//
//  Created by Nate Armstrong on 3/18/15.
//  Copyright (c) 2015 Nate Armstrong. All rights reserved.
//

import UIKit

class FancyInsetView: UIView {

  var innerShadow: YIInnerShadowView = {
    let view = YIInnerShadowView(frame: CGRectZero)
    view.shadowRadius = 2.0
    view.shadowColor = UIColor(white: 4/255.0, alpha: 1.0)
    view.shadowOffset = CGSizeMake(0.0, 1.0)
    view.shadowOpacity = 0.5
    return view
    }()

  var innerView: UIView!

  var cornerRadius: CGFloat = 5.0 {
    didSet {
      layer.cornerRadius = cornerRadius
      innerView.layer.cornerRadius = cornerRadius
    }
  }

  required init(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }

  func setup() {
    backgroundColor = UIColor(red: 132/255.0, green: 43/255.0, blue: 10/255.0, alpha: 1.0)
    clipsToBounds = true
    layer.masksToBounds = false

    // inner shadow
    innerView = UIView()
    innerView.layer.masksToBounds = true
    innerView.addSubview(innerShadow)
    insertSubview(innerView, atIndex: 0)

    // outer shadow
    layer.shadowRadius = 2.0
    layer.shadowColor = UIColor(red: 197/255.0, green: 88/255.0, blue: 53/255.0, alpha: 1.0).CGColor
    layer.shadowOpacity = 1.0
    layer.shadowOffset = CGSizeMake(0.0, 0.0)
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    innerView.frame = bounds
    innerShadow.frame = CGRectInset(bounds, -1.0, -1.0)
  }
  
}
