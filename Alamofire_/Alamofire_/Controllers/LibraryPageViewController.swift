//
//  LibraryPageViewController.swift
//  Alamofire_
//
//  Created by Mac on 11/07/2023.
//

import UIKit
import RealmSwift

class LibraryPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var songs: Results<Song>!
    
    lazy var libraryTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(LibraryTableViewCell.self, forCellReuseIdentifier: "LibraryTableViewCell")
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setTitleColor()
        loadPlayedSongs()
        title = "Library"
    }
    
    func loadPlayedSongs() {
//        let realm = try! Realm()
//        songs = realm.objects(Song.self)
//        libraryTableView.reloadData()
    }
    
    func setTitleColor() {
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LibraryTableViewCell", for: indexPath) as! LibraryTableViewCell
        cell.backgroundColor = .darkGray
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func setupViews() {
        view.addSubview(libraryTableView)
        
        NSLayoutConstraint.activate([
            libraryTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            libraryTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            libraryTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            libraryTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 10)
        ])
    }
    
}
