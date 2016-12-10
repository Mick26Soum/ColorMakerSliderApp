//
//  ViewController.swift
//  ColorMakerSlider
//
//  Created by MICK SOUMPHONPHAKDY on 12/5/16.
//  Copyright © 2016 MICK SOUMPHONPHAKDY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	//Mark: Slider Outlets
	
	@IBOutlet weak var redSlider: UISlider!
	@IBOutlet weak var greenSlider: UISlider!
	@IBOutlet weak var blueSlider: UISlider!
	@IBOutlet weak var colorView: UIView!
	@IBOutlet weak var redValueLabel: UILabel!
	@IBOutlet weak var greenValueLabel: UILabel!
	@IBOutlet weak var blueValueLabel: UILabel!
	@IBOutlet weak var colorSliderTitleLabel: UILabel!
	

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.

	}
	
	@IBAction func changeColorComponent(){
		
		let redNumber = CGFloat(self.redSlider.value)
		let greenNumber = CGFloat(self.greenSlider.value)
		let blueNumber = CGFloat(self.blueSlider.value)
		
		redValueLabel.text = String(format: "%.0f", redNumber)
		greenValueLabel.text = String(format: "%.0f", greenNumber)
		blueValueLabel.text = String(format: "%.0f", blueNumber)
		
		print(redNumber, greenNumber, blueNumber)
		
		colorView.backgroundColor	= UIColor(red: redNumber/255, green: greenNumber/255, blue: blueNumber/255, alpha: 1.0)
		
		colorSliderTitleLabel.textColor	= UIColor(red: redNumber/255, green: greenNumber/255, blue: blueNumber/255, alpha: 1.0)
		
		
	}
	





}

