//
//  ViewController.swift
//  Bill Splitting
//
//  Created by Linas Nutautas on 09/12/2022.
//

import UIKit

class CalculatorViewController: UIViewController {
  
  //MARK: Outlets
  @IBOutlet weak var enterAmountTextField: UITextField!
  @IBOutlet weak var zeroPercentageButton: UIButton!
  @IBOutlet weak var tenPercentageButton: UIButton!
  @IBOutlet weak var twentyPercentageButton: UIButton!
  @IBOutlet weak var splitNumberLabel: UILabel!
  
  //MARK: Properties
  var tip = 0.0
  var splitPeople = 0
  var billTotal = 0.0
  var finalResult = "0.0"
  
  
  //MARK: Actions
  @IBAction func tipChanged(_ sender: UIButton) {
    //Deselect all buttons
    zeroPercentageButton.isSelected = false
    tenPercentageButton.isSelected = false
    twentyPercentageButton.isSelected = false
    
    //Select the pressed button
    sender.isSelected = true
    
    //Show the button value of the tip percent selected
    let buttonTitle = sender.currentTitle ?? "User not choice"
    
    //.dropLast() remove the last element in the button title index. Here "%"
    let buttonTitleMinusPercentSign = String(buttonTitle.dropLast())
    
    //Converting the percentage value in to Decimal
    let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)
    //tip expressed as a decimal
    tip = (buttonTitleAsANumber ?? 0.0) / 100
    
  }
  
  @IBAction func steppedValueChanged(_ sender: UIStepper) {
    splitNumberLabel.text = String(format: "%.0f", sender.value)
    splitPeople = Int(sender.value)
  }
  
  @IBAction func calculateTapped(_ sender: UIButton) {
    let bill = enterAmountTextField.text!
    if bill != "" {
      billTotal = Double(bill)!
      let result = billTotal * (1 + tip) / Double(splitPeople)
      finalResult = String(format: "%.2f", result)
      print(finalResult)
      performSegue(withIdentifier: "goToResult", sender: self)
    }
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToResult" {
      let destinationVC = segue.destination as! ResultsViewController
      destinationVC.totalAmountPerPerson = finalResult
      destinationVC.splitOfPeople = splitPeople
      destinationVC.tips = Int(tip)
    }
    
  }
}


