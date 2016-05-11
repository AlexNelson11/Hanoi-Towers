//
//  ViewController.swift
//  Hanoi_towers
//
//  Created by Alex Nelson on 3/16/16.
//  Copyright © 2016 Alex Nelson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var leftLargeDiscImageView: UIImageView!
    @IBOutlet var topLargeDiscImageView: UIImageView!
    @IBOutlet var rightLargeDiscImageView: UIImageView!
    @IBOutlet var leftMediumDiscImageView: UIImageView!
    @IBOutlet var rightMediumDiscImageView: UIImageView!
    @IBOutlet var topMediumDiscImageView: UIImageView!
    @IBOutlet var leftSmallDiscImageView: UIImageView!
    @IBOutlet var rightSmallDiscImageView: UIImageView!
    @IBOutlet var topSmallDiscImageView: UIImageView!
    
    @IBOutlet var label: UILabel!
    
    var LargeDiscState: Int = 1
    var MediumDiscState: Int = 1
    var SmallDiscState: Int = 1
    
    var towerSelected: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.showProgress()
    }
    
    func setup(){
        
        
    }
    
    @IBAction func selectLeftTower(){
        
        if towerSelected == 2{
            if SmallDiscState == 2{
                SmallDiscState = 1
                
            }else if MediumDiscState == 2 && SmallDiscState == 3{
                MediumDiscState = 1
                
            }else if LargeDiscState == 2 && MediumDiscState == 3 && SmallDiscState == 3{
                LargeDiscState = 1
            }
            towerSelected = 0
        }
        if towerSelected == 3{
            if SmallDiscState == 3{
                SmallDiscState = 1
                
            }else if MediumDiscState == 3 && SmallDiscState == 2{
                MediumDiscState = 1
                
            }else if LargeDiscState == 3 && MediumDiscState == 2 && SmallDiscState == 2{
                LargeDiscState = 1
            }
            towerSelected = 0
        }else{
        towerSelected = 1
        }
        showProgress()
    }
    
    @IBAction func selectTopTower(){
        
        if towerSelected == 1{
            if SmallDiscState == 1{
                SmallDiscState = 2
                
            }else if MediumDiscState == 1 && SmallDiscState == 3{
                MediumDiscState = 2
                
            }else if LargeDiscState == 1 && MediumDiscState == 3 && SmallDiscState == 3{
                LargeDiscState = 2
            }
            towerSelected = 0
        }
        if towerSelected == 3{
            if SmallDiscState == 3{
                SmallDiscState = 2
                
            }else if MediumDiscState == 3 && SmallDiscState == 3{
                MediumDiscState = 2
                
            }else if LargeDiscState == 3 && MediumDiscState == 1 && SmallDiscState == 1{
                LargeDiscState = 2
            }
            towerSelected = 0
        }else {
            towerSelected = 2
    }
            showProgress()
    }
    
    @IBAction func selectRightTower(){
        
        if towerSelected == 2{
            if SmallDiscState == 2{
                SmallDiscState = 3
                
            }else if MediumDiscState == 2 && SmallDiscState == 1{
                MediumDiscState = 3
                
            }else if LargeDiscState == 2 && MediumDiscState == 1 && SmallDiscState == 1{
                LargeDiscState = 3
            }
            towerSelected = 0
        }
        if towerSelected == 1{
            if SmallDiscState == 1{
                SmallDiscState = 3
                
            }else if MediumDiscState == 1 && SmallDiscState == 2{
                MediumDiscState = 3
                
            }else if LargeDiscState == 1 && MediumDiscState == 2 && SmallDiscState == 2{
                LargeDiscState = 3
            }
            towerSelected = 0
        }else{
            towerSelected = 3
        }
        showProgress()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showProgress(){
        
        label.text = String(SmallDiscState)
        
        if SmallDiscState == 1{
            leftSmallDiscImageView.image = UIImage(named: "green.png")
            topSmallDiscImageView.image = UIImage(named: "")
            rightSmallDiscImageView.image = UIImage(named: "")
        }
        if SmallDiscState == 2{
            topSmallDiscImageView.image = UIImage(named: "green.png")
            leftSmallDiscImageView.image = UIImage(named: "")
            rightSmallDiscImageView.image = UIImage(named: "")
        }
        if SmallDiscState == 3{
            rightSmallDiscImageView.image = UIImage(named: "green.png")
            leftSmallDiscImageView.image = UIImage(named: "")
            topSmallDiscImageView.image = UIImage(named: "")
        }
        if MediumDiscState == 1{
            leftMediumDiscImageView.image = UIImage(named: "yellow.png")
            topMediumDiscImageView.image = UIImage(named: "")
        }
    }
}

