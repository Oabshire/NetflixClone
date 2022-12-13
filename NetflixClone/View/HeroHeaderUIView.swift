//
//  HeroHeaderUIView.swift
//  NetflixClone
//
//  Created by Onie on 12.12.2022.
//

import UIKit

class HeroHeaderUIView: UIView {
	private let downloadButton: UIButton = {
		let button = UIButton()
		button.setTitle("Download", for: .normal)
		button.layer.borderColor = UIColor.white.cgColor
		button.layer.borderWidth = 1
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()

	private let playButton: UIButton = {
		let button = UIButton()
		button.setTitle("Play", for: .normal)
		button.layer.borderColor = UIColor.white.cgColor
		button.layer.borderWidth = 1
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()

	private let heroImageView: UIImageView = {
		let imageView = UIImageView()
		imageView.image = UIImage(named: "heroImage")
		imageView.contentMode = .scaleAspectFill
		imageView.clipsToBounds = true
		return imageView
	}()

	override init(frame: CGRect) {
		super.init(frame: frame)
		addSubview(heroImageView)
		addGradient()
		addSubview(playButton)
		addSubview(downloadButton)

		applyConstrains()
	}

	override func layoutSubviews() {
		super.layoutSubviews()
		heroImageView.frame = bounds
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

private extension HeroHeaderUIView {
	func addGradient() {
		let gradientLayer = CAGradientLayer()
		gradientLayer.colors = [UIColor.clear, UIColor.systemBackground.cgColor]
		gradientLayer.frame = bounds
		layer.addSublayer(gradientLayer)
	}

	func applyConstrains() {
		NSLayoutConstraint.activate([
			playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 90),
			playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
			playButton.widthAnchor.constraint(equalToConstant: 100),

			downloadButton.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 25),
			downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
			downloadButton.widthAnchor.constraint(equalToConstant: 100)
		])
	}
}
