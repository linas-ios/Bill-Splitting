//
//  ViewController.swift
//  Bill Splitting
//
//  Created by Linas Nutautas on 09/12/2022.
//

import UIKit

class ViewController: UIViewController {
  
  //MARK: Outlets
  @IBOutlet weak var enterAmountTextField: UITextField!
  @IBOutlet weak var zeroPercentageButton: UIButton!
  @IBOutlet weak var tenPercentageButton: UIButton!
  @IBOutlet weak var twentyPercentageButton: UIButton!
  @IBOutlet weak var splitNumberLabel: UILabel!
  
  
  //MARK: Actions
  @IBAction func tipChanged(_ sender: UIButton) {
  }
  
  @IBAction func steppedValueChanged(_ sender: UIStepper) {
  }
  
  @IBAction func calculateTapped(_ sender: UIButton) {
  }
  
}

