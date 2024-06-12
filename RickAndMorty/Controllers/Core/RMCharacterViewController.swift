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
        
        RMService.shared.execute(.listCharacterRequests, expecting: RMGetAllCharactersResponse.self) { result in
            
            switch result {
            case .success(let model):
                print(String(describing: model))
                print("Total: "+String(model.info.count))
                print("Page result count: "+String(model.results.count))
            case .failure(let error):
                print(String(describing: error))
                print("error case")
            }
            
            
            
        }
        
    
        
    }
}
