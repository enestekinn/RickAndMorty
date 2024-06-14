//
//  CharacterListViewViewModel.swift
//  RickAndMorty
//
//  Created by Enes Tekin on 13.06.2024.
//

import UIKit


final class  CharacterListViewViewModel: NSObject {
    
    
    func fetchCharacters(){
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
extension CharacterListViewViewModel : UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RMCharacterCollectionViewCell.cellIdentifier, for: indexPath) as? RMCharacterCollectionViewCell else {
            fatalError("Unsupported cell")
        }
        
        let viewModel = RMCharacterCollectionViewCellViewModel(characterName: "Enes", characterStatus: .alive, characterImageUrl: nil)
        cell.configure(with: viewModel)
                return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let bounds = UIScreen.main.bounds
        let width = (bounds.width - 30)/2
        return CGSize(width: width, height: width * 1.5)
    }
}
