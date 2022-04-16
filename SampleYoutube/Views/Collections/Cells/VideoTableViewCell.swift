//
//  VideoTableViewCell.swift
//  SampleYoutube
//
//  Created by Masaki on R 4/01/23.
//

import UIKit

class VideoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIView!
    @IBOutlet weak var discriptionView: UIView!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var supplementLabel: UILabel!
    static var reuseIdentifier: String { return String(describing: self) }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configreView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func configreView() {
        self.iconImageView.layer.cornerRadius = self.iconImageView.frame.size.width / 2
        self.iconImageView.contentMode = .scaleAspectFill
        self.iconImageView.clipsToBounds = true
    }
    
    func bindData(image: String){
        self.iconImageView.image = UIImage(named: image)
        self.titleLabel.text = "タイトル"
        self.supplementLabel.text = "補足説明を入れる"
    }
    
}
