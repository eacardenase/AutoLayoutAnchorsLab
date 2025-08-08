//
//  LayoutMarginsViewController.swift
//  SafeAreaLab
//
//  Created by Edwin Cardenas on 8/7/25.
//

import UIKit

class LayoutMarginsViewController: UIViewController {

    let customView: UIView = {
        let view = UIView()

        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemPink

        return view
    }()

    // MARK: View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }

}

// MARK: - Helpers

extension LayoutMarginsViewController {

    private func setupViews() {
        view.backgroundColor = .systemBackground

        view.addSubview(customView)

        // customView
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(
                equalTo: view.layoutMarginsGuide.topAnchor
            ),
            customView.leadingAnchor.constraint(
                equalTo: view.layoutMarginsGuide.leadingAnchor
            ),
            customView.trailingAnchor.constraint(
                equalTo: view.layoutMarginsGuide.trailingAnchor
            ),
            customView.bottomAnchor.constraint(
                equalTo: view.layoutMarginsGuide.bottomAnchor
            ),
        ])
    }

}
