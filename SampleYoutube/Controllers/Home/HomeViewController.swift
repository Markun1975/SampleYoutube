//
//  HomeViewController.swift
//  SampleYoutube
//
//  Created by Masaki on R 4/01/23.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        tableView.backgroundColor = .red
        tableView.register(UINib(nibName: "VideoTableViewCell", bundle: nil), forCellReuseIdentifier: "videoTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "videoTableViewCell", for: indexPath) as! VideoTableViewCell
        cell.backgroundColor = .systemBlue
        cell.thumbnailImageView.backgroundColor = UIColor.brown
        cell.bindData(image: "SampleIcon")
//        cell.titleLabel.text = "aaaaaaa"
        return cell
    }
    


}
