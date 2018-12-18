//
//  MyView.swift
//  caoqinyu_5
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 2016110302. All rights reserved.
//

import UIKit

class MyView: UIView {

    //重写draw函数
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        UIColor.black.setStroke()
        path.stroke()
        UIColor.purple.setFill()
        path.fill()
    }
}
