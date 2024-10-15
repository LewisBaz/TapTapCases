//
//  ViewController.swift
//  TapTapCases
//
//  Created by Lewis on 14.10.2024.
//

import UIKit

class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TapTap.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        cell.textLabel?.text = TapTap.allCases[indexPath.row].rawValue
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let tap = TapTap.allCases[indexPath.row]
        switch tap {
        case .disabledViewNotIgnoringTouches:
            navigationController?.pushViewController(DisabledViewNotIgnoringTouches(), animated: true)
        case .outOfTheBoundsView:
            navigationController?.pushViewController(OutOfTheBounds(), animated: true)
        }
    }

}

