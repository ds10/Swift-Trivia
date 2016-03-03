//
//  ViewController.swift
//  RSTriva
//
//  Created by David Sherlock on 29/02/2016.
//  Copyright © 2016 David Sherlock. All rights reserved.
//

import UIKit
import SwiftCSV

class ViewController: UIViewController {

    @IBOutlet weak var QuestionLabel: UITextView!
    @IBOutlet var Button1: UIView!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func RandQuestions(){
       
        
        let questions = readCSV("questions.csv")
        
        var RandomNumber = arc4random() % 100
        RandomNumber += 1
        
        print(questions.rows[1])
        
        
        
        
    }
    
    
    func readCSV(URL: String)->CSV{
        
        var questions = CSV(string: "id,name,age\n1,Alice,18\n2,Bob,19")
        
        do {
            let questions = try CSV(name: "questions.csv")
        } catch {
            //error handeling
        }
        
        return questions
 
    }

    
    @IBAction func Button1Action(sender: AnyObject) {
        
        
    }
    
    
    @IBAction func Button2Action(sender: AnyObject) {
        
    }
    
    
    @IBAction func Button3Action(sender: AnyObject) {
        
    }
    
    
    @IBAction func Button4Action(sender: AnyObject) {
        
    }
    
}

