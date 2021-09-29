//
//  ViewController.swift
//  UIPasteboardTutorial-iOS
//
//  Created by kimhyungyu on 2021/09/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pasteText(_ sender: Any) {
        UIPasteboard.general.string = idText.text
    }
}

