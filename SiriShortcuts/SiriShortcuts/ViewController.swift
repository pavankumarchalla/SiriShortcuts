//
//  ViewController.swift
//  SiriShortcuts
//
//  Created by Pavan Kumar C on 05/11/18.
//  Copyright © 2018 pavan. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  public func makeViewRed() {
    view.backgroundColor = .red
  }

  @IBAction func buttonAction(sender: UIButton) {
    let activity = NSUserActivity(activityType: "com.pavan.SiriShortcuts.ChangeColor.makeRed")
    activity.title = "Make View Red"
    activity.userInfo = ["color" : "red"]
    activity.isEligibleForSearch = true
    activity.isEligibleForPrediction = true
//    activity.persistentIdentifier = NSUserActivityPersistentIdentifier(rawValue: "com.thelightprj.SiriShortcutsTutorial.makeRed")
    activity.persistentIdentifier = NSUserActivityPersistentIdentifier("com.pavan.SiriShortcuts.ChangeColor.makeRed")
    view.userActivity = activity
    activity.becomeCurrent()

    makeViewRed()
  }


}

