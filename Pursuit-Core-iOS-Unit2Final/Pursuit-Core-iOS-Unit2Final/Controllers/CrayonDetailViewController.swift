//
//  CrayonDetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Ian Bailey on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UIViewController {

    @IBOutlet weak var crayonDetailViewName: UILabel!
    @IBOutlet var crayonDetailViewColor: UIView!
    @IBOutlet weak var crayonDetailRed: UILabel!
    @IBOutlet weak var crayonDetailGreen: UILabel!
    @IBOutlet weak var crayonDetailBlue: UILabel!
    @IBOutlet weak var crayonDetailAlpha: UILabel!
    
    
    var crayonInfo: Crayon?
    
    var currentRedValue: CGFloat = 0.0 {
        didSet {
            crayonDetailRed.text = "The current red value is \(currentRedValue)"
            crayonDetailViewColor.backgroundColor = UIColor(displayP3Red: CGFloat((currentRedValue))/255, green: CGFloat((currentGreenValue))/255, blue: CGFloat((currentBlueValue))/255, alpha: 1.0)
        }
    }
    
    var currentGreenValue: CGFloat = 0.0 {
        didSet {
            crayonDetailGreen.text = "The current Green value is  \(currentGreenValue)"
            crayonDetailViewColor.backgroundColor = UIColor(displayP3Red: CGFloat((currentRedValue))/255, green: CGFloat((currentGreenValue))/255, blue: CGFloat((currentBlueValue))/255, alpha: 1.0)
        }
    }
    
    var currentBlueValue: CGFloat = 0.0 {
        didSet {
            crayonDetailBlue.text = "The current Blue Value is \(currentBlueValue)"
            crayonDetailViewColor.backgroundColor = UIColor(displayP3Red: CGFloat((currentRedValue))/255, green: CGFloat((currentGreenValue))/255, blue: CGFloat((currentBlueValue))/255, alpha: 1.0)
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCrayonDetails()

        
    }
    
    private func updateCrayonDetails() {
        crayonDetailViewName.text = crayonInfo?.name
        crayonDetailViewColor.backgroundColor = UIColor(displayP3Red: CGFloat((crayonInfo?.red)!)/255, green: CGFloat((crayonInfo?.green)!)/255
            , blue: CGFloat((crayonInfo?.blue)!)/255
            , alpha: 1.0)
   

}
    
    
    @IBAction func redSlider(_ sender: UISlider) {
        currentRedValue = CGFloat(sender.value)
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
        currentGreenValue = CGFloat(sender.value)
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        currentBlueValue = CGFloat(sender.value)
    }
    
    
    
}


