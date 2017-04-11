//
//  ViewController.swift
//  TimeLineDemo
//
//  Created by SnowBaby on 2017/4/11.
//  Copyright © 2017年 SnowBaby. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    var tmview:timeLineView = timeLineView()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initDate()
        /*scrollView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, -70, WIDTH, HEIGHT)];
        scrollView.backgroundColor=RGBACOLOR(240, 240, 240, 1);
        dataPiker=[[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, SP_W(60))];
        myView.frame=CGRectMake(0,SP_W(65), WIDTH, SP_W(60)*myView.msgModelArray.count+65);
        scrollView.contentSize=CGSizeMake(0, SP_W(60)*(myView.msgModelArray.count+2)+SP_W(30));
        [scrollView addSubview:dataPiker];
        [scrollView addSubview:myView];
        [self.view addSubview:scrollView];*/
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        let scrollewView = UIScrollView(frame: CGRect(x: 0, y: -70, width: 367, height: 677))
        scrollewView.backgroundColor = UIColor.clear
        tmview.frame = CGRect(x: 0, y: 65, width: 367, height: 60*tmview.modelArray.count + 65)
        scrollewView.contentSize = CGSize(width: 367, height: (60*tmview.modelArray.count)+65)
        scrollewView.addSubview(tmview)
        self.view.addSubview(scrollewView)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    func initDate(){
        
        //init the data
        let dateFormate = DateFormatter()
        dateFormate.dateFormat = "yyyy-MM-dd HH:mm"
        dateFormate.locale = Locale.current
        let currentDate = Date()
        
        //let dataString = dateFormate.string(from: currentDate)
        let model = TimeLineModel()
        model.address = "SnowBaby"
        model.motive = "this is a test"
        model.date = "2017-04-11 14:04"
        model.color = UIColor.red
        tmview.modelArray = [model,model,model,model,model,model,model,model,model,model,model,model,model,model,model]
        
        
        
        
    }

   

}

