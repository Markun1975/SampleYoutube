//
//  HomeViewController.swift
//  SampleYoutube
//
//  Created by Masaki on R 4/01/23.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.backgroundColor = .red
        collectionView.register(UINib(nibName: "VideoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "videoCollectionViewCell")
        
        // レイアウト設定
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.itemSize = CGSize(width: collectionView.frame.width, height: 300)
        collectionView.collectionViewLayout = layout
    }

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
