//
//  ReadableContentsGuideViewController.swift
//  SafeAreaLab
//
//  Created by Edwin Cardenas on 8/7/25.
//

import UIKit

class ReadableContentsGuideViewController: UIViewController {

    // MARK: - Properties

    let longLabel: UILabel = {
        let label = UILabel()

        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemYellow
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20)
        label.text = """
            Eiusmod ad do anim laboris anim commodo ea eu. Deserunt aliqua esse dolore pariatur dolore in officia non nostrud aliqua. Culpa id nisi laborum exercitation labore labore est ullamco cillum nostrud ea officia.

            Eu labore cillum quis Lorem dolore laboris excepteur elit occaecat eiusmod culpa. Velit esse ea nisi sint dolor mollit do sit nulla reprehenderit. Aliqua magna dolor laboris dolore fugiat fugiat deserunt qui exercitation exercitation dolore nulla. Nulla nostrud culpa nisi aliqua nisi cillum occaecat id cillum aliquip. Culpa nostrud esse ullamco aliqua proident velit est amet aliqua ut labore est cupidatat. Duis aliqua ullamco sint laborum reprehenderit adipisicing sint nulla nulla irure adipisicing commodo qui. Quis adipisicing adipisicing aliqua non.

            Cupidatat duis enim ullamco qui amet laborum non voluptate. Dolor laboris aliqua ea cupidatat. Anim qui est dolor quis ipsum nulla voluptate ad consectetur.
            """

        return label
    }()

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }

}

// MARK: Helpers

extension ReadableContentsGuideViewController {

    private func setupViews() {
        view.backgroundColor = .systemBackground

        view.addSubview(longLabel)

        NSLayoutConstraint.activate([
            longLabel.topAnchor.constraint(
                equalTo: view.readableContentGuide.topAnchor
            ),
            longLabel.leadingAnchor.constraint(
                equalTo: view.readableContentGuide.leadingAnchor
            ),
            longLabel.trailingAnchor.constraint(
                equalTo: view.readableContentGuide.trailingAnchor
            ),
            longLabel.bottomAnchor.constraint(
                equalTo: view.readableContentGuide.bottomAnchor
            ),
        ])
    }

}
