//
//  CategoryMenuCollectionView.swift
//  SampleYoutube
//
//  Created by Masaki on R 4/09/11.
//

import UIKit
import SnapKit

class CategoryMenuCollectionView: UIView, UICollectionViewDelegate, UICollectionViewDataSource {
    
    private var collectionView = UICollectionView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        collectionView = UICollectionView(frame: self.frame)
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
//        collectionView = UICollectionView(frame: , collectionViewLayout: flowLayout)
        collectionView.alwaysBounceVertical = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .red
        collectionView.register(CategoryMenuCollectionViewCell.self, forCellWithReuseIdentifier: CategoryMenuCollectionViewCell.reuseIdentifier)
//        self.addSubview(collectionView)
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
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryMenuCollectionViewCell.reuseIdentifier, for: indexPath) as! CategoryMenuCollectionViewCell
        cell.backgroundColor = .red
        cell.bindData("サンプル")
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
