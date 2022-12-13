//
//  HomeViewController.swift
//  NetflixClone
//
//  Created by Onie on 09.12.2022.
//

import UIKit

class HomeViewController: UIViewController {
	private let homeFeedTable: UITableView = {
		let table = UITableView(frame: .zero, style: .grouped)
		table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: "CollectionViewTableViewCell")
		return table
	}()

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .blue
		view.addSubview(homeFeedTable)

		homeFeedTable.delegate = self
		homeFeedTable.dataSource = self

		configureNavBar()

		homeFeedTable.tableHeaderView = HeroHeaderUIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 450))
	}

	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		homeFeedTable.frame = view.bounds
	}
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
	func numberOfSections(in tableView: UITableView) -> Int {
		return 20
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		1
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier,
																									 for: indexPath) as? CollectionViewTableViewCell
		else {
			return UITableViewCell()
		}

		return cell
	}

	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 200
	}

	private func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> Int {
		return 40
	}
}

private extension HomeViewController {
	func configureNavBar() {
		var image = UIImage(named: "netflixLogo")
		image = image?.withRenderingMode(.alwaysOriginal).resizeTo(size: CGSize(width: 50, height: 75))
		navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .done, target: self, action: nil)

		navigationItem.rightBarButtonItems = [
			UIBarButtonItem(image: UIImage(systemName: "person"), style: .done, target: self, action: nil),
			UIBarButtonItem(image: UIImage(systemName: "play.rectangle"), style: .done, target: self, action: nil)
			]

		navigationController?.navigationBar.tintColor = .white
	}
}
