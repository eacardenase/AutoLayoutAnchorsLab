//
//  CustomTableViewController.swift
//  AnchorsLab
//
//  Created by Edwin Cardenas on 8/8/25.
//

import UIKit

class CustomTableViewController: UITableViewController {

    enum Topic: String, CaseIterable {
        case anchors = "Anchors"
        case safeArea = "Safe Area"
        case layoutMargins = "Layour Margins"
        case marginsGuide = "Margin Guides"
        case readableContent = "Readable Content"
    }

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Anchors Lab"

        tableView.register(
            UITableViewCell.self,
            forCellReuseIdentifier: NSStringFromClass(UITableViewCell.self)
        )
    }

}

// MARK: UITableViewDataSource

extension CustomTableViewController {

    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return Topic.allCases.count
    }

    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: NSStringFromClass(UITableViewCell.self),
            for: indexPath
        )

        let title = Topic.allCases[indexPath.row]

        cell.textLabel?.text = title.rawValue
        cell.selectionStyle = .none

        return cell
    }

}

// MARK: UITableViewDelegate

extension CustomTableViewController {

    override func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        let viewController: UIViewController

        let topic = Topic.allCases[indexPath.row]

        switch topic {
        case .anchors:
            viewController = AnchorsViewController()
        case .layoutMargins:
            viewController = LayoutMarginsViewController()
        case .marginsGuide:
            viewController = MarginGuideSpacersViewController()
        case .readableContent:
            viewController = ReadableContentsGuideViewController()
        case .safeArea:
            viewController = SafeAreaViewController()
        }

        navigationController?.pushViewController(viewController, animated: true)
    }

}
