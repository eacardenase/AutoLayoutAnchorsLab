//
//  MarginGuideSpacersViewController.swift
//  SafeAreaLab
//
//  Created by Edwin Cardenas on 8/7/25.
//

import UIKit

class MarginGuideSpacersViewController: UIViewController {

    // MARK: - Properties

    let leadingGuide = UILayoutGuide()
    lazy var okButton = makeButton(title: "OK", color: .systemBlue)
    let middleGuide = UILayoutGuide()
    lazy var cancelButton = makeButton(title: "Cancel", color: .systemGreen)
    let trailingGuide = UILayoutGuide()

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }

}

// MARK: - Helpers

extension MarginGuideSpacersViewController {

    private func setupViews() {
        view.backgroundColor = .systemBackground

        view.addLayoutGuide(leadingGuide)
        view.addSubview(okButton)
        view.addLayoutGuide(middleGuide)
        view.addSubview(cancelButton)
        view.addLayoutGuide(trailingGuide)

        let margins = view.layoutMarginsGuide

        NSLayoutConstraint.activate([
            leadingGuide.leadingAnchor.constraint(
                equalTo: margins.leadingAnchor
            ),
            leadingGuide.trailingAnchor.constraint(
                equalTo: okButton.leadingAnchor
            ),

            okButton.trailingAnchor.constraint(
                equalTo: middleGuide.leadingAnchor
            ),
            middleGuide.trailingAnchor.constraint(
                equalTo: cancelButton.leadingAnchor
            ),

            cancelButton.trailingAnchor.constraint(
                equalTo: trailingGuide.leadingAnchor
            ),
            trailingGuide.trailingAnchor.constraint(
                equalTo: margins.trailingAnchor
            ),

            okButton.widthAnchor.constraint(equalTo: cancelButton.widthAnchor),

            leadingGuide.widthAnchor.constraint(
                equalTo: middleGuide.widthAnchor
            ),
            leadingGuide.widthAnchor.constraint(
                equalTo: trailingGuide.widthAnchor
            ),

            leadingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            okButton.centerYAnchor.constraint(
                equalTo: leadingGuide.centerYAnchor
            ),
            middleGuide.centerYAnchor.constraint(
                equalTo: leadingGuide.centerYAnchor
            ),
            cancelButton.centerYAnchor.constraint(
                equalTo: leadingGuide.centerYAnchor
            ),
            trailingGuide.centerYAnchor.constraint(
                equalTo: leadingGuide.centerYAnchor
            ),
        ])
    }

    func makeButton(title: String, color: UIColor) -> UIButton {
        let button = UIButton(type: .system)

        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.tintColor = .white
        button.backgroundColor = color

        var configuration = UIButton.Configuration.plain()
        configuration.contentInsets = NSDirectionalEdgeInsets(
            top: 8,
            leading: 16,
            bottom: 8,
            trailing: 16
        )

        button.configuration = configuration

        return button
    }

}
