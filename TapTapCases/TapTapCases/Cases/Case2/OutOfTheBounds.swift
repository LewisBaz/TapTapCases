//
//  OutOfTheBounds.swift
//  TapTapCases
//
//  Created by Lewis on 15.10.2024.
//

import UIKit

final class OutOfTheBounds: UIViewController {
    
    private let mainView = UIView()
    private let helperView = PointOutsideView()
    private let outOfTheBoundsView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    @objc private func outOfTheBoundsViewTapped() {
        print("outOfTheBoundsView tapped")
    }
    
    private func setup() {
        view.addSubview(mainView)
        mainView.addSubview(helperView)
        helperView.addSubview(outOfTheBoundsView)
        
        mainView.snp.makeConstraints {
            $0.horizontalEdges.centerY.equalToSuperview()
            $0.height.equalTo(300)
        }
        
        helperView.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(100)
            $0.size.equalTo(200)
            $0.centerY.equalToSuperview()
        }
        
        outOfTheBoundsView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.size.equalTo(100)
            $0.leading.equalToSuperview().offset(150)
        }
        
        view.backgroundColor = .white
        mainView.backgroundColor = .systemBlue
        helperView.backgroundColor = .systemRed
        outOfTheBoundsView.backgroundColor = .systemYellow
        
        outOfTheBoundsView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(outOfTheBoundsViewTapped)))
    }
}
