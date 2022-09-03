//
//  CommonButton.swift
//  SampleYoutube
//
//  Created by Masaki on R 4/08/11.
//

import UIKit
import MaterialComponents.MaterialButtons
import SnapKit

class CommonButton: MDCButton {
    
    static let fontSize: CGFloat = 12
    static let cornerRadius: CGFloat = 12
    
    private func setUp(){
        self.backgroundColor = .gray
        self.titleLabel?.textColor = .white
        self.isExclusiveTouch = true
        self.isMultipleTouchEnabled = false
        self.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        self.setTitleFont(.boldSystemFont(ofSize: Self.fontSize), for: .normal)
        self.layer.cornerRadius = Self.cornerRadius
        
        self.setTitle("aaaa", for: .normal)
        
    }
//    self.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//    self.layer.cornerRadius = shareButton.frame.size.height / 2
    
    func setConstraints() {
        
//        let inset = BRUtils.getSideInset(ofWidth: UIScreen.main.bounds.width)
        
//        self.snp.remakeConstraints { [weak self] make in
//            guard let self = self else { return }
//            make.width.equalTo(30)
//            make.height.equalTo(10)
//            make.width.equalTo(self.stackView.snp.width).dividedBy(3.f)
//            CommonButton(frame: CGRect(x: CGFloat((i*90)), y: scrollGenreView.frame.size.height / 4, width: self.view.frame.size.width / 5, height: scrollGenreView.frame.size.height / 2))
//        }
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
    }
    
    @objc private func tapButton() {
//        delegate?.tapButton(in: self)
        print("Taped")
    }
}
