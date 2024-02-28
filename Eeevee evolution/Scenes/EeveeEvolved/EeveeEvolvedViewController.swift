//
//  EeveeEvolvedViewController.swift
//  Eeevee evolution
//
//  Created by iOS Pozol on 27/02/24.
//

import UIKit

final class EeveeEvolvedViewController: UIViewController {
  
  private let eeveeImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = UIImage(named: "eevee")
    imageView.contentMode = .scaleAspectFit
    return imageView
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configUserInterface()
  }
  
  private func configUserInterface() {
    view.addSubview(eeveeImageView)
    eeveeImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    eeveeImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    eeveeImageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
    eeveeImageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
    
    let eeveeEvolutionHelper = EeveeEvolutionHelper()
    let eeveeEvolved = eeveeEvolutionHelper.evolve()
    title = eeveeEvolved.name.capitalized
    view.backgroundColor = eeveeEvolved.color
    eeveeImageView.image = UIImage(named: eeveeEvolved.name)
    navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
  }
}
