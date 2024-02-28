//
//  EeveeEvolutionHelper.swift
//  Eeevee evolution
//
//  Created by iOS Pozol on 27/02/24.
//

struct EeveeEvolutionHelper {
  let eevees: [Eevee] = [
    Eevee(name: "espeon", color: .systemPink),
    Eevee(name: "flareon", color: .systemOrange),
    Eevee(name: "glaceon", color: .systemCyan),
    Eevee(name: "jolteon", color: .systemYellow),
    Eevee(name: "leafon", color: .systemGreen),
    Eevee(name: "sylveon", color: .systemPink),
    Eevee(name: "umbreon", color: .black),
    Eevee(name: "vaporeon", color: .cyan)
  ]
  
  func evolve() -> Eevee {
    return eevees.randomElement() ?? Eevee(name: "eevee", color: .systemBrown)
  }
}
