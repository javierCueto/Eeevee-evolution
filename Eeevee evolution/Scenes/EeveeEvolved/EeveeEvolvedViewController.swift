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
    let eeveeEvolutionHelper = EeveeEvolutionHelper()
    let eeveeEvolved = eeveeEvolutionHelper.evolve()
    title = eeveeEvolved.name.capitalized
    view.backgroundColor = eeveeEvolved.color
    eeveeImageView.image = UIImage(named: eeveeEvolved.name)
    navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
  }
}
