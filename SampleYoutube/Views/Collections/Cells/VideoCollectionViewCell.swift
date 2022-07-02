//
//  VideoCollectionViewCell.swift
//  SampleYoutube
//
//  Created by Masaki on R 4/05/24.
//

import UIKit

class VideoCollectionViewCell: UICollectionViewCell {
    
    private static let titleFontSize: CGFloat = 17
    
    @IBOutlet weak var thumbnailImageView: UIView!
    @IBOutlet weak var discriptionView: UIView!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleLabelHeight: NSLayoutConstraint!
    @IBOutlet weak var supplementLabel: UILabel!
    static var reuseIdentifier: String { return String(describing: self) }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        titleLabel.font = .systemFont(ofSize: Self.titleFontSize)
        titleLabel.textColor = .black
        titleLabel.lineBreakMode = .byTruncatingTail
        titleLabel.numberOfLines = 2
        let maxSize = CGSize(width: titleLabel.frame.width, height: CGFloat.greatestFiniteMagnitude)
        let size = titleLabel.sizeThatFits(maxSize)
        titleLabel.frame = CGRect(origin: CGPoint(x:0, y: 0), size: size)
        
        configreView()
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
//    }
    
    private func configreView() {
        iconImageView.layer.cornerRadius = self.iconImageView.frame.size.width / 2
        iconImageView.contentMode = .scaleAspectFill
        iconImageView.clipsToBounds = true
    }
    
    private func setConstraints() {
        
    }
    
    func bindData(image: String){
        iconImageView.image = UIImage(named: image)
        titleLabel.text = "FUJI ROCK FESTIVAL'22:2MONTHS TO GO!"
        supplementLabel.text = "Fuji Rock Festival"
    }
    
    
    
}
