//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Enes Tekin on 9.06.2024.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Chracters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status",value: "alive")
            ]
        )
        RMService.shared.execute(request, expecting: RMCharacter.self){ result in
            
            
        }
    }
    


}
