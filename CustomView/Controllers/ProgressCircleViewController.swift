//
//  ViewController.swift
//  CustomViewComponent
//
//  Created by Joaquim Pessoa Filho on 22/05/19.
//  Copyright © 2019 Joaquim Pessoa Filho. All rights reserved.
//

import UIKit

class ProgressCircleViewController: UITableViewController {

    @IBOutlet weak var progressCircleView: ProgressCircleView?
    @IBOutlet weak var progressCircleView2: ProgressCircleView!
    @IBOutlet weak var progressCircleView3: ProgressCircleView!
    @IBOutlet weak var widthSlider: UISlider!
    @IBOutlet weak var progressSlider: UISlider!
    @IBOutlet weak var targetSlider: UISlider!
    @IBOutlet weak var lblTarget: UILabel!
    @IBOutlet weak var lblProgress: UILabel!
    var colors:[UIColor] = [#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1), #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.progressCircleView?.circleWidth = CGFloat(self.widthSlider.value)
        self.progressCircleView?.progressValue = CGFloat(self.progressSlider.value)
        self.progressCircleView?.targetValue = CGFloat(self.targetSlider.value)
        
        self.progressCircleView2?.circleWidth = CGFloat(self.widthSlider.value)
        self.progressCircleView2?.progressValue = CGFloat(self.progressSlider.value)
        self.progressCircleView2?.targetValue = CGFloat(self.targetSlider.value)
        
        self.progressCircleView3?.circleWidth = CGFloat(self.widthSlider.value)
        self.progressCircleView3?.progressValue = CGFloat(self.progressSlider.value)
        self.progressCircleView3?.targetValue = CGFloat(self.targetSlider.value)
        
        self.lblProgress.text = String(format: "%.2f", self.progressSlider.value * 100) + "%"
        self.lblTarget.text = String(format: "%.2f", self.targetSlider.value * 100) + "%"
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        self.progressCircleView?.setNeedsDisplay()
        self.progressCircleView2?.setNeedsDisplay()
        self.progressCircleView3?.setNeedsDisplay()
    }

    @IBAction func widthChange(_ sender: Any) {
        self.progressCircleView?.circleWidth = CGFloat(self.widthSlider.value)
        self.progressCircleView2?.circleWidth = CGFloat(self.widthSlider.value)
        self.progressCircleView3?.circleWidth = CGFloat(self.widthSlider.value)
    }
    
    @IBAction func progessChange(_ sender: Any) {
        self.progressCircleView?.progressValue = CGFloat(self.progressSlider.value)
        self.progressCircleView2?.progressValue = CGFloat(self.progressSlider.value)
        self.progressCircleView3?.progressValue = CGFloat(self.progressSlider.value)
        self.lblProgress.text = String(format: "%.2f", self.progressSlider.value * 100) + "%"
    }
    
    @IBAction func targetChange(_ sender: Any) {
        self.progressCircleView?.targetValue = CGFloat(self.targetSlider.value)
        self.progressCircleView2?.targetValue = CGFloat(self.targetSlider.value)
        self.progressCircleView3?.targetValue = CGFloat(self.targetSlider.value)
        self.lblTarget.text = String(format: "%.2f", self.targetSlider.value * 100) + "%"
    }
    
    @IBAction func changeColor(_ sender: Any) {
        let color1 = Int.random(in: 0 ..< colors.count)
        let color2 = Int.random(in: 0 ..< colors.count)
        
        self.progressCircleView?.progressColor = colors[color1]
        self.progressCircleView?.targetColor = colors[color2]
        
        self.progressCircleView2?.progressColor = colors[color1]
        self.progressCircleView2?.targetColor = colors[color2]
        
        self.progressCircleView3?.progressColor = colors[color1]
        self.progressCircleView3?.targetColor = colors[color2]
    }
}

