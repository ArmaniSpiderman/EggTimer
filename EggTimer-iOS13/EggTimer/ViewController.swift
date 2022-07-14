//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progessBar: UIProgressView!
    @IBOutlet weak var tittleLabel: UILabel!
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]

    var totalTime = 0
    var secondsPassed = 0
    
    //var secondsRemaining = 60 (CODE USED TO COUNT DOWN EGGTIMER)
    
    var timer = Timer()
    //let softTime = 5
    //let mediumTime = 7
    // hardtime = 12
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        //progessBar.progress = 1.0  CODE NEEDED TO SET PROGRESS BAR
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
       // let result = eggTimes[hardness]!
       // print(result)
        progessBar.progress = 0.0
        secondsPassed = 0
        tittleLabel.text = hardness
        
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime  {
            secondsPassed += 1
            progessBar.progress = Float(secondsPassed) / Float(totalTime)
            
        //print(Float(secondsPassed) / Float(totalTime))
            //print(Float(secondsPassed / totalTime))
            //print(percentageProgess)
            
            //progessBar.progress = Float(percentageProgess)
            
            //print(Float(percentageProgess)) to check decimel number
            
            //print("\(secondsRemaining) seconds.")
            
        } else {
            timer.invalidate()
            tittleLabel.text = "DONE!"
        }
        
        // print(eggTimes[hardness])
        //if hardness == "Soft" {
         //   print(softTime)
       // } else if hardness == "Meduim" {
           // print(mediumTime)
      //  } else {
       //     print(hardtime)
      //  }
    }
    

}
