//
//  EeveeViewController.swift
//  Eeevee evolution
//
//  Created by iOS Pozol on 27/02/24.
//

import UIKit

class EeveeViewController: UIViewController {
  
  private let eeveeImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = UIImage(named: "eevee")
    imageView.contentMode = .scaleAspectFit
    return imageView
  }()
  
  private let evolveButton: UIButton = {
    let configuration = UIButton.Configuration.tinted()
    let button = UIButton(configuration: configuration)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Evolve", for: .normal)
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configUserInterface()
  }
  
  private func configUserInterface() {
    view.backgroundColor = .systemBackground
    
    view.addSubview(eeveeImageView)
    eeveeImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    eeveeImageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    eeveeImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    eeveeImageView.heightAnchor.constraint(equalToConstant: 280).isActive = true
    
    view.addSubview(evolveButton)
    evolveButton.topAnchor.constraint(equalTo: eeveeImageView.bottomAnchor, constant: 50).isActive = true
    evolveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
  }
}

