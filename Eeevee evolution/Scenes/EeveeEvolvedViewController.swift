//
//  EeveeEvolvedViewController.swift
//  Eeevee evolution
//
//  Created by iOS Pozol on 27/02/24.
//

import UIKit

final class EeveeEvolvedViewController: UIViewController {
  
  @IBOutlet weak var eeveeImageView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configUserInterface()
  }
  
  private func configUserInterface() {
    title = "Vaporeon"
    view.backgroundColor = .systemCyan
    eeveeImageView.image = UIImage(named: "vaporeon")
  }
}
