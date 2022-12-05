//
//  DefaultViewController.swift
//  SampleYoutube
//
//  Created by Masaki on R 4/07/03.
//

import UIKit
import SnapKit
import MaterialComponents
import GoogleCast

class DefaultViewController: UIViewController {
    
    private let logoHeight:Int = 20
    private var genreView = UIView()
    
    var categoryMenuView: UIView!
    
    var castButton = GCKUICastButton()
    
    private lazy var scrollEdgeAppearance: UINavigationBarAppearance = {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.headerColor
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        return appearance
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.scrollEdgeAppearance = scrollEdgeAppearance
        
        
        let view = UIView()
        let imageView = UIImageView(image: UIImage(named: "YouTube_Premium_logo"))
        imageView.frame = CGRect(x: 0, y: 0, width: Int(self.view.frame.width) / 5, height: logoHeight)
        view.addSubview(imageView)
        view.frame = imageView.bounds
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: view)
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        self.setBarView()
    }
    
    override func viewDidLayoutSubviews() {
//        self.setBarView()
    }
    
    func setNavigationBarItems() {
        
//        var isCast = (self.castButton != nil) && !self.castButton.isHidden
        
        let size:Int = 36
        
        
        castButton = GCKUICastButton.init()
        castButton.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        castButton.tintColor = UIColor.gray
        
        let accountButton = UIButton()
        accountButton.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        accountButton.tintColor = UIColor.blue
        let picture = UIImage(named: "masaki")
        accountButton.setImage(picture, for: .normal)
        accountButton.imageView?.layer.cornerRadius = accountButton.frame.size.height / 2
//        accountButton.backgroundColor = .red
        accountButton.layer.cornerRadius = accountButton.frame.size.height / 2
        
        let barView = UIView(frame: CGRect(x: 0, y: 0, width: size, height: size))
        barView.backgroundColor = .clear
        barView.addSubview(accountButton)
        barView.frame = accountButton.bounds
        
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(customView: barView)
    }
    
    func setBarView() {
//        let barView = CategoryMenuCollectionView(frame: CGRect(x: 0, y: ((self.navigationController?.navigationBar.bounds.height)! * 2), width: self.view.frame.size.width * 2, height: self.view.frame.size.height / 15))
//        barView.backgroundColor = .red
//        self.view.addSubview(barView)

//        self.categoryMenuView = CategoryMenuCollectionView.init()
//        barView.addSubview(self.categoryMenuView)
//
//        self.view.addSubview(self.categoryMenuView)
//
//
//
//        scrollGenreView.frame = barView.bounds
//        scrollGenreView.backgroundColor = .blue
//        scrollGenreView.isPagingEnabled = false
//        scrollGenreView.flashScrollIndicators()
//
//        genreButton = CommonButton(frame: CGRect(x: 15, y: scrollGenreView.frame.size.height / 4, width: self.view.frame.size.width / 6, height: scrollGenreView.frame.size.height / 2))
//        genreButton.setTitle("探索", for: .normal)
//        scrollGenreView.addSubview(genreButton)
//        barView.addSubview(scrollGenreView)
//        horizontalScroll()
    }
    
    func setGenreButton() {
        
    }
    
//    //横スクロール
//        func horizontalScroll() {
//            //vcのframe設定
//            genreView.frame = CGRect(x: 10, y: 0, width: scrollGenreView.frame.size.width, height: scrollGenreView.frame.size.height)
//            genreView.backgroundColor = .clear
//
//            //上部のスクロールビューに多数のボタンを配置
//            // TODO: - ボタンは16個で固定
//            for i in 0...6 {
//                var button = CommonButton()
//                // 表示フレームを作成。CGSizeMake(最大幅, 最大高さ)
//                let frame = CGSize(width: 250, height: CGFloat.greatestFiniteMagnitude)
//                // 文字列の幅に調節したサイズを取得
//                let rect = button.titleLabel?.sizeThatFits(frame)
//                // UILabel の width の制約に、調節済みの width を設定
//                //titleLabelWidth.constant = rect.width
//
//
//                //サイズ
//                button = CommonButton(frame: CGRect(x: CGFloat((i*90)), y: scrollGenreView.frame.size.height / 4, width: self.view.frame.size.width / 5, height: scrollGenreView.frame.size.height / 2))
//                button.setContentCompressionResistancePriority(UILayoutPriority.init(150), for: .horizontal)
////                button.snp.remakeConstraints { [weak self] make in
////                    guard let self = self else { return }
//////                    make.left.equalTo(CGFloat(i*90))
//////                    make.top.equalTo(scrollGenreView.frame.size.height / 4)
////                    make.width.lessThanOrEqualTo(100)
////                    make.height.equalTo(scrollGenreView.frame.size.height / 2)
////                }
//
//                //タグ
//                button.tag = i
//                //buttonに文字を挿入
//                setTitleForButton(tag: button.tag, button: button)
//
//                if (button.tag == 0){
//                    button.layer.cornerRadius = 2
//                }
//                //button.titleの色
//                button.setTitleColor(.white, for: .normal)
//                button.layer.borderWidth = 1
//                //vcに載せる
//                genreView.addSubview(button)
//            }
//            //スクロールビューにvcを配置
//            scrollGenreView.addSubview(genreView)
//            //scrollViewのコンテンツサイズをvc1のサイズにする
//            scrollGenreView.contentSize = genreView.bounds.size
//        }
//
//    //スクロールビューのボタンに文字を入れる
//        func setTitleForButton(tag:Int, button:CommonButton){
//            switch tag {
//            case 0:
//                button.setTitle("探索", for: .normal)
//            case 1:
//                button.setTitle("すべて", for: .normal)
//            case 2:
//                button.setTitle("新しい動画", for: .normal)
//            case 3:
//                button.setTitle("ミックス", for: .normal)
//            case 4:
//                button.setTitle("社会", for: .normal)
//            case 5:
//                button.setTitle("科学", for: .normal)
//            case 6:
//                button.setTitle("ビジネス", for: .normal)
//            default:
//                break
//            }
//        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
