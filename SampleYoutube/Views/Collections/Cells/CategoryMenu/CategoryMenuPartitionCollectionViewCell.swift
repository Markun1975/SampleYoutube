//
//  CategoryMenuPartitionCollectionViewCell.swift
//  SampleYoutube
//
//  Created by Masaki on R 4/11/18.
//

import UIKit

class CategoryMenuPartitionCollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier: String = "categoryMenuPartitionCollectionViewCell"
    
    private let categoryMenuViewCell: CategoryMenuCollectionViewCell = .init()
    
    var imageView: UIImageView!
    
    override func prepareForReuse() {
        imageView.image = UIImage(named: "outline")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView = UIImageView()
        imageView.frame = CGRect(x: 0, y: categoryMenuViewCell.getHeight(), width: 5, height: 100)
        imageView.image = UIImage(named: "outline")
        self.addSubview(imageView)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func updateConstraints() {
        super.updateConstraints()
//        setConstraint()
//        setColor(.default)
    }
    
    
}
