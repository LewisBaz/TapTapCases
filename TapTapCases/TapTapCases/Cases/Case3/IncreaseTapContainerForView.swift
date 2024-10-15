//
//  IncreaseTapContainerForView.swift
//  TapTapCases
//
//  Created by Lewis on 15.10.2024.
//

import UIKit

final class IncreaseTapContainerForView: UIViewController {
    
    let button = BigTapContainerButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.size.equalTo(20)
        }
        button.backgroundColor = .blue
        view.backgroundColor = .white
        
        button.addTarget(self, action: #selector(buttomTapped), for: .touchUpInside)
    }
    
    @objc func buttomTapped() {
        print("button tapped")
    }
}
