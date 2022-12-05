//
//  CategoryMenuCollectionViewCell.swift
//  SampleYoutube
//
//  Created by Sugita Masaki on R 4/09/11.
//

import UIKit
import SnapKit

class CategoryMenuCollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier: String = "categoryMenuCollectionViewCell"
    
    let buttonfontSize:CGFloat = 12
    var isGenre = true
    
    var button:UIButton = UIButton()
    
    override func prepareForReuse() {
        super.prepareForReuse()
        // Buttonの初期化
        self.button = UIButton()
        self.button.backgroundColor = .clear
        self.button.setTitle("", for: .normal)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        self.button = UIButton.init(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        self.button.titleLabel?.font = UIFont.systemFont(ofSize: buttonfontSize)
        self.button.layer.cornerRadius = 13.0
        self.button.layer.borderWidth = 0.6
        self.button.backgroundColor = UIColor.categoryMenuCellBackgroundColor
        self.button.layer.borderColor = UIColor.categoryMenuCellBorderColor?.cgColor
        self.button.setTitleColor(UIColor.textMainColor, for: .normal)
        self.addSubview(button)
        setConstraint()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
//        setColor(.default)
    }
    
    override func updateConstraints() {
        super.updateConstraints()
//        setConstraint()
//        setColor(.default)
    }
    
    func setConstraint() {
        self.button.snp.remakeConstraints { make in
            make.top.left.bottom.right.equalToSuperview().inset(UIEdgeInsets(top: 15, left: 10, bottom: 15, right: 10))
        }
//        self.addSubview(self.button)
    }
    
    func setColor(_ colorMode: UIColor) {
    }
    
    func bindData(_ data: String, isGenre:Bool) {
        if let _data = data as? Video {
        }
        button.setTitle(data, for: .normal)
        self.button.layer.cornerRadius = (isGenre == false) ? 0.0 : 13.0
//        if let _data = data as? BRUserPalette {
//            titleLabel.text = _data.name
//            if let _url = _data.theme?.thumbnailUrl {
//                thumbnailView.sd_setImage(with: _url) { [weak self] (image, error, _, _) in
//                    guard let self = self, let _image = image else { return }
//                    self.thumbnailView.image = _image
//                }
//            }
//            if (_data.isOwn()) {
//                authorStackView.isHidden = true
//            } else {
//                authorStackView.isHidden = false
//                authorLabel.text = _data.nickname
//            }
//        }
    }
    
    func getHeight() -> CGFloat {
        return self.frame.height - 30.0
    }
    
    
    // MARK: - UIResponder method
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches , with:event)
        print("Began")
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches , with:event)
        print("Ended")
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches , with:event)
        print("Cancelled")
    }
}

