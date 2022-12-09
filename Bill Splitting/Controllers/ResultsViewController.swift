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
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  //MARK: Actions
  @IBAction func recalculateTapped(_ sender: UIButton) {
  }
  
}
