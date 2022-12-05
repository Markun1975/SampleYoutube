//
//  HomeViewController.swift
//  SampleYoutube
//
//  Created by Masaki on R 4/01/23.
//

import UIKit
import GoogleCast

let collectionViewHeight:Double = 300

class HomeViewController: DefaultViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var homeStackView: UIStackView!
    var collectionView: UICollectionView!
    
    var button: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.homeStackView = UIStackView(frame: CGRect(x: 0, y: (navigationController?.navigationBar.frame.height)! * 2, width: self.view.frame.size.width, height: self.view.frame.size.height))
        
        categoryMenuView = CategoryMenuCollectionView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height / 15))
        self.homeStackView.addSubview(categoryMenuView)
        
        // レイアウト設定
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.itemSize = CGSize(width: self.view.frame.width, height: collectionViewHeight)
        let collection = UICollectionView(frame: CGRect(x: 0, y: Int(self.view.frame.size.height / 15), width: Int(self.view.frame.size.width), height: Int(self.view.frame.size.height - (self.view.frame.size.height / 15))), collectionViewLayout: layout)
        
        collection.delegate = self
        collection.dataSource = self
        collection.register(UINib(nibName: "VideoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "videoCollectionViewCell")
        self.collectionView = collection
        self.homeStackView.addSubview(self.collectionView)
        
        view.backgroundColor = .white
        
        self.view.addSubview(homeStackView)
        setNavigationBarItems()
    }
    
    override func setNavigationBarItems() {
        super.setNavigationBarItems()
    }
    
    
    @objc func click() {
            let second = SearchViewController()
            navigationController?.pushViewController(second, animated: true)
        }
    
//    override func applyTheme() {
//        super.applyTheme()
//
//        previousViewController!.navigationItem.backBarButtonItem?.tintColor = BRColor.navigationBarIconColor(with: .dark)
//        previousViewController!.navigationItem.rightBarButtonItem?.tintColor = BRColor.navigationBarIconColor(with: .dark)
//        previousViewController!.navigationItem.leftBarButtonItem?.tintColor = BRColor.navigationBarIconColor(with: .dark)
//
//        // ナビゲーションバーを透過
//        navigationController!.navigationBar.isTranslucent = true
//        navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
//        navigationController!.navigationBar.shadowImage = UIImage()
//
//        if #available(iOS 15.0, *) {
//            let appearance = UINavigationBarAppearance()
//            appearance.configureWithOpaqueBackground()
//            appearance.backgroundColor = .clear
//            appearance.shadowColor = .clear
//            navigationController!.navigationBar.standardAppearance = appearance
//            navigationController!.navigationBar.scrollEdgeAppearance = appearance
//        }

//        tableView.backgroundColor = view.backgroundColor
//        tableView.reloadData()
//    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "videoCollectionViewCell", for: indexPath) as! VideoCollectionViewCell
        
//        if let cell = cell as? VideoCollectionViewCell {
//            cell.setupCell(model: models[indexPath.row])
//        }

        cell.backgroundColor = .systemBlue
        cell.thumbnailImageView.backgroundColor = UIColor.brown
        cell.bindData(image: "SampleIcon")
//        cell.titleLabel.text = "aaaaaaa"
        return cell
    }
    


}
