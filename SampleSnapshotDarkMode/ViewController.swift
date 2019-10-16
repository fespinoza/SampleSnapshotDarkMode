//
//  ViewController.swift
//  SampleSnapshotDarkMode
//
//  Created by Felipe Espinoza on 14/10/2019.
//  Copyright © 2019 Felipe Espinoza. All rights reserved.
//

import UIKit

public class SampleView: UIView {
    // MARK: - Public properties

    // MARK: - Private properties

    // MARK: - Initializers
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    // MARK: - Private methods
    private func setup() {
        backgroundColor = UIColor(named: "customBackground")

        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello World"
        label.textColor = .label
        label.font = UIFont.preferredFont(forTextStyle: .title1)

        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Tap me!", for: .normal)
        button.backgroundColor = .systemBlue
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)

        addSubview(label)
        addSubview(button)

        NSLayoutConstraint.activate([
          label.centerXAnchor.constraint(equalTo: centerXAnchor),
          label.centerYAnchor.constraint(equalTo: centerYAnchor),

          button.centerXAnchor.constraint(equalTo: centerXAnchor),
          button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
        ])
    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let sample = SampleView()
        sample.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(sample)

        NSLayoutConstraint.activate([
            sample.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sample.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            sample.topAnchor.constraint(equalTo: view.topAnchor),
            sample.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])

    }
}

