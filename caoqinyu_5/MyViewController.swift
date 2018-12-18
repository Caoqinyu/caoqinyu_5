//
//  MyViewController.swift
//  caoqinyu_5
//
//  Created by student on 2018/11/24.
//  Copyright © 2018年 2016110302. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    var label:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置根视图视图背景色
        self.view.backgroundColor = UIColor.white
        
        //自定制视图
        //绘制椭圆
        let view1=MyView(frame:(CGRect(x: 100, y: 100, width: 150, height: 100)))
        view1.backgroundColor=UIColor.clear
        self.view.addSubview(view1)
        
        //创建UILabel对象
        label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 40))
        label.text = "hello world"
        self.view.addSubview(label)
        
        //创建UIButton对象
        let btn = UIButton(frame: CGRect(x: 100, y: 250, width: 100, height: 40))
        btn.setTitle("点我", for: .normal)
        btn.layer.borderWidth = 1
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.setTitleColor(UIColor.brown, for: .highlighted)
        //给按钮添加target-action
        btn.addTarget(self, action: #selector(clicked), for: .touchUpInside)
        self.view.addSubview(btn)
        
        //创建UIImageView对象
        let imageView = UIImageView(frame: CGRect(x: 10, y: 400, width: self.view.frame.width - 20, height: (self.view.frame.width - 20) * 0.618))
        //获取图片资源路径
        let path = Bundle.main.path(forResource: "1", ofType: "jpg")
        //以该路径创建图片
        let image = UIImage(contentsOfFile: path!)
        //将图片加入到imageView中
        imageView.image = image
        //将imageView加入到控制器中
        self.view.addSubview(imageView)
    }
    
    
    /// 按钮点击事件，改变label显示的文字
    @objc func clicked() {
        if label.text == "hello world" {
            label.text = "I'm clicked"
        } else {
            label.text = "hello world"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


