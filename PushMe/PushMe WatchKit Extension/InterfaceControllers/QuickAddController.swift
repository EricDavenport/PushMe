//
//  QuickAddController.swift
//  PushMe WatchKit Extension
//
//  Created by Eric Davenport on 12/8/20.
//

import Foundation
import WatchKit

class QuickAddController: WKInterfaceController {
  
  @IBOutlet weak var quickAddTopLeft: WKInterfaceButton!
  @IBOutlet weak var quickAddTopRight: WKInterfaceButton!
  @IBOutlet weak var quickAddBottomLeft: WKInterfaceButton!
  @IBOutlet weak var quickAddBottomRight: WKInterfaceButton!
  @IBOutlet weak var currentTotalLabel: WKInterfaceLabel!
  
  var currentTotal : Int = {
    didSet {
      
    }
  }
  
  override func awake(withContext context: Any?) {
    super.awake(withContext: context)
    
    
    currentTotalLabel.setText("\(currentTotal)")
  }
  
  override func willActivate() {
    super.willActivate()
  }
  
  override func didDeactivate() {
    super.didDeactivate()
  }
  
  
  
  
  @IBAction func topLeftQuickAdd() {
    currentTotal += 1
  }
  
  
  
}
