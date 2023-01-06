//
//  ResultsViewController.swift
//  Bill Splitting
//
//  Created by Linas Nutautas on 09/12/2022.
//

import UIKit

class ResultsViewController: UIViewController {
  
  //MARK: Outlets
  @IBOutlet weak var totalLabel: UILabel!
  @IBOutlet weak var settingsLabel: UILabel!
  
  var totalAmountPerPerson = "0.0"
  var splitOfPeople = 2
  var tips = 10
  
  override func viewDidLoad() {
    super.viewDidLoad()
    totalLabel.text = "\(totalAmountPerPerson)€"
    settingsLabel.text = "Split between \(splitOfPeople) people, with \(tips)"
    
  }
  
  //MARK: Actions
  @IBAction func recalculateTapped(_ sender: UIButton) {
    self.dismiss(animated: true)
  }
  
}
