//
//  DisabledViewNotIgnoringTouches.swift
//  TapTapCases
//
//  Created by Lewis on 14.10.2024.
//

import UIKit

final class DisabledViewNotIgnoringTouches: UIViewController {
    
    private let contentIgnoringView = IgnoringTouchesView()
    private let justView = UIView()
    private let extraView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    @objc private func onViewTapped() {
        print("justView tapped")
    }
    
    private func setup() {
        view.addSubview(contentIgnoringView)
        contentIgnoringView.addSubview(justView)
        contentIgnoringView.addSubview(extraView)
        
        contentIgnoringView.snp.makeConstraints {
            $0.horizontalEdges.centerY.equalToSuperview()
            $0.height.equalTo(300)
        }
        
        justView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.size.equalTo(100)
        }
        
        extraView.snp.makeConstraints {
            $0.trailing.centerY.equalToSuperview()
            $0.size.equalTo(100)
        }
        
        view.backgroundColor = .white
        contentIgnoringView.backgroundColor = .systemCyan
        justView.backgroundColor = .systemPink
        extraView.backgroundColor = .systemGreen
        
        contentIgnoringView.isUserInteractionEnabled = false
        justView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onViewTapped)))
    }
}
