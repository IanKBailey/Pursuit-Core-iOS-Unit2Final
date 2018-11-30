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
    
    var crayonInfo: Crayon?
    
    
    
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
}
