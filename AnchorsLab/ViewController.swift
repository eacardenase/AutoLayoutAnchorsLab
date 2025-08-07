//
//  ViewController.swift
//  AnchorsLab
//
//  Created by Edwin Cardenas on 8/7/25.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties

    lazy var upperLeftLabel = makeLabel(withText: "upperLeft")
    lazy var upperRightLabel = makeLabel(withText: "upperRight")
    lazy var lowerLeftLabel = makeSecondaryLabel(withText: "lowerLeft")
    lazy var payBillButton = makeButton(withText: "Pay Bill")
    lazy var customView = makeView()

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }

}

// MARK: - Helpers

extension ViewController {

    private func setupViews() {
        view.backgroundColor = .systemBackground

        view.addSubview(upperLeftLabel)
        view.addSubview(upperRightLabel)
        view.addSubview(lowerLeftLabel)
        view.addSubview(payBillButton)
        view.addSubview(customView)

        // upperLeftLabel
        NSLayoutConstraint.activate([
            upperLeftLabel.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor,
                constant: 8
            ),
            upperLeftLabel.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 8
            ),
        ])

        // upperRightLabel
        NSLayoutConstraint.activate([
            upperRightLabel.topAnchor.constraint(
                equalTo: upperLeftLabel.topAnchor
            ),
            upperRightLabel.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                constant: -8
            ),
        ])

        // lowerLeftLabel
        NSLayoutConstraint.activate([
            lowerLeftLabel.leadingAnchor.constraint(
                equalTo: upperLeftLabel.leadingAnchor
            ),
            lowerLeftLabel.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                constant: -8
            ),
        ])

        // payBillButton
        NSLayoutConstraint.activate([
            payBillButton.trailingAnchor.constraint(
                equalTo: upperRightLabel.trailingAnchor
            ),
            payBillButton.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                constant: -8
            ),
        ])

        // customView: option 1 - size explicitly
        //        NSLayoutConstraint.activate([
        //            customView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        //            customView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        //            customView.heightAnchor.constraint(equalToConstant: 50),
        //            customView.widthAnchor.constraint(equalToConstant: 100),
        //        ])

        // customView: option 1 - size dynamically (pinning)
        NSLayoutConstraint.activate([
            customView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            customView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor,
                constant: 100
            ),
            customView.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 20
            ),
            customView.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                constant: -20
            ),
            customView.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                constant: -100
            ),
        ])
    }

    private func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()

        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .systemYellow

        return label
    }

    private func makeSecondaryLabel(withText text: String) -> UILabel {
        let label = UILabel()

        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemYellow
        label.text = text
        label.font = .systemFont(ofSize: 12)
        label.textColor = .gray

        return label
    }

    private func makeButton(withText text: String) -> UIButton {
        let button = UIButton(type: .system)

        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.tintColor = .white
        button.backgroundColor = .blue

        return button
    }

    private func makeView() -> UIView {
        let view = UIView()

        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemPink

        return view
    }

}
