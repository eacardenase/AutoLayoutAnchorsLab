//
//  SafeAreaViewController.swift
//  SafeAreaLab
//
//  Created by Edwin Cardenas on 8/7/25.
//

import UIKit

class SafeAreaViewController: UIViewController {

    lazy var topLabel = makeLabel(withText: "top")
    lazy var bottomLabel = makeLabel(withText: "bottom")
    lazy var leadingLabel = makeLabel(withText: "leading")
    lazy var trailingLabel = makeLabel(withText: "trailing")

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }

}

// MARK: - Helpers

extension SafeAreaViewController {

    private func setupViews() {
        view.backgroundColor = .systemBackground

        view.addSubview(topLabel)
        view.addSubview(bottomLabel)
        view.addSubview(leadingLabel)
        view.addSubview(trailingLabel)

        // topLabel
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor,
                constant: 8
            ),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])

        // bottomLabel
        NSLayoutConstraint.activate([
            bottomLabel.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                constant: -8
            ),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])

        // leadingLabel
        NSLayoutConstraint.activate([
            leadingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            leadingLabel.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 8
            ),
        ])

        // trailingLabel
        NSLayoutConstraint.activate([
            trailingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            trailingLabel.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                constant: -8
            ),
        ])
    }

    private func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()

        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .systemYellow
        label.font = .systemFont(ofSize: 32)

        return label
    }

}
