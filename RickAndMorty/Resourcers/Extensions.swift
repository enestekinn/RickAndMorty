//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Enes Tekin on 13.06.2024.
//

import UIKit

extension UIView {

    
    func addSubviews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
  

}
