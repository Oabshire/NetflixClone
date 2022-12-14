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
		table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
		return table
	}()

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .blue
		view.addSubview(homeFeedTable)

		homeFeedTable.delegate = self
		homeFeedTable.dataSource = self
	}

	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		homeFeedTable.frame = view.bounds
	}
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		20
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
																						 for: indexPath)
		cell.textLabel?.text = "Hello"

		return cell
	}

	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 200
	}

	private func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> Int {
		return 40
	}
}
