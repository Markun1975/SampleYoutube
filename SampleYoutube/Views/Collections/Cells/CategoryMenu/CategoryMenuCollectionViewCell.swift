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
    
    private var button: UIButton!
    
    override func prepareForReuse() {
        button.titleLabel?.text = ""
        button.titleLabel?.textColor = .clear
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        button = UIButton.init()
        button.backgroundColor = .red
        button.titleLabel?.text = "aaa"
        button.titleLabel?.textColor = .black
        self.addSubview(button)
        button.snp.makeConstraints { [weak self] make in
            make.top.bottom.left.right.equalToSuperview().offset(5)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        setConstraint()
//        setColor(.default)
    }
    
    override func updateConstraints() {
        super.updateConstraints()
//        setConstraint()
//        setColor(.default)
    }
    
    func setConstraint() {
//        let inset = BRUtils.getSideInset(ofWidth: UIApplication.shared.keyWindow!.frame.size.width)
//        marginCollection.forEach { constraint in
//            constraint.constant = inset
//        }
//        if UIDevice.current.userInterfaceIdiom == .pad {
//            trailingMarginCollection.forEach { constraint in
//                constraint.constant = inset
//            }
//        }
//        dividerHeight.constant = 1.f / UIScreen.main.scale
    }
    
    func setColor(_ colorMode: UIColor) {
//        rippleView.rippleColor = BRColor.tapEffectGrayBackgroundColor()
//        rippleView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        thumbnailView.backgroundColor = BRColor.buttonSubColorBackgroundColor()
//        thumbnailView.contentMode = .scaleAspectFill
//        thumbnailView.layer.cornerRadius = BRConstants.getArtworkImageCornerRadius()
//        thumbnailView.clipsToBounds = true
//        titleLabel.textColor = BRColor.baseTextMainColor()
//        authorImageView.image = UIImage.init(named: "favorite_list_author")!.tintedImage(with: BRColor.baseIconSubColor())
//        authorLabel.textColor = BRColor.baseTextSubColor()
//        arrowView.image = UIImage.init(named: "arrow-right-white")!.tintedImage(with: BRColor.baseIconMainColor())
//        addListImageView.image = UIImage.init(named: "icon-more")?.tintedImage(with: BRColor.buttonSubColorIconColor())
//        divider.backgroundColor = BRColor.baseBorderMainColor()
    }
    
    func bindData(_ data: String) {
        if let _data = data as? Video {
            
        }
        
        button.titleLabel?.text = data
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
