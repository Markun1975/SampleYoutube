//
//  CategoryMenuCollectionView.swift
//  SampleYoutube
//
//  Created by Masaki on R 4/09/11.
//

import UIKit
import SnapKit

class CategoryMenuCollectionView: UIView, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var collectionView: UICollectionView!
    
    var categoryTitles:[String] = ["探索","全て","ゲーム","音楽","ミックス","ライブ","観光"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // レイアウト設定
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal // 横スクロール
        layout.minimumInteritemSpacing = 1
        layout.itemSize = CGSize(width: frame.width / 5, height: frame.height)
        var collection = UICollectionView(frame: frame, collectionViewLayout: layout)
        
        collection.delegate = self
        collection.dataSource = self
        collection.showsHorizontalScrollIndicator = false // スクロールバー非表示
        collection.register(CategoryMenuCollectionViewCell.self, forCellWithReuseIdentifier: CategoryMenuCollectionViewCell.reuseIdentifier) //ジャンルのCellをセット
//        collection.register(CategoryMenuCollectionViewCell.self, forCellWithReuseIdentifier: CategoryMenuCollectionViewCell.reuseIdentifier) //Cellをセット
        self.collectionView = collection
        self.addSubview(self.collectionView)
        setConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    private func setConstraints() {
        collectionView.snp.makeConstraints { make in
            if #available(iOS 11.0, *) {
                make.top.equalToSuperview()
            } else {
                make.top.equalToSuperview()
            }
            make.left.right.bottom.equalToSuperview()
        }
    }

    // MARK: UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categoryTitles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryMenuCollectionViewCell.reuseIdentifier, for: indexPath)
        var genre = true
        if categoryTitles[indexPath.row].contains("探索") {
            genre = false
        } else {
            genre = true
        }
        if let cell = cell as? CategoryMenuCollectionViewCell {
            cell.bindData(categoryTitles[indexPath.row],isGenre: genre)
            }
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
