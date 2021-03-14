//
//  ViewController.swift
//  sketchDraw
//
//  Created by Alvin Tu on 3/14/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var drawingPadView: DrawingPad!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder()

        // Do any additional setup after loading the view.
    }
    
        
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if(event!.subtype == UIEvent.EventSubtype.motionShake) {
            drawingPadView.clear()
        }
    }
    
    
    
    @IBAction func redButtonPressed(_ sender: Any) {
        drawingPadView.strokeColor = .red
    }
    
    
    @IBAction func blueButtonPressed(_ sender: Any) {
        drawingPadView.strokeColor = .blue
    }
    @IBAction func greenButtonPressed(_ sender: Any) {
        drawingPadView.strokeColor = .green
    }
}

