//
//  HomeViewController.swift
//  SampleYoutube
//
//  Created by Masaki on R 4/01/23.
//

import UIKit

let collectionViewHeight:Double = 300

class HomeViewController: DefaultViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var button: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.backgroundColor = .red
        collectionView.register(UINib(nibName: "VideoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "videoCollectionViewCell")
        
        // レイアウト設定
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.itemSize = CGSize(width: collectionView.frame.width, height: collectionViewHeight)
        collectionView.collectionViewLayout = layout
        
        view.backgroundColor = .white
        button = UIBarButtonItem(barButtonSystemItem: .fastForward, target: self, action: #selector(click))
        navigationItem.rightBarButtonItem = button
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
