//
//  TopSongCollectionViewCell.swift
//  Alamofire_
//
//  Created by Mac on 11/07/2023.
//

import UIKit
import Alamofire

class TopSongCollectionViewCell: UICollectionViewCell {
    let identifier = "TopSongCollectionViewCell"
    
    let nameLabel = Label(label: "", textColor: .brown)
    
    let imageView: UIImageView = {
            let imageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.contentMode = .scaleAspectFit
            return imageView
        }()
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            setupViews()
        }

        required init?(coder: NSCoder) {
            super.init(coder: coder)
            setupViews()
        }
    
    func setupViews() {
        self.addSubview(nameLabel)
        self.addSubview(imageView)
        
        NSLayoutConstraint.activate([
        nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
        nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
        nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),

        imageView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
        imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8)
                ])
            }
    func downloadImage(withURL url: URL) {
           AF.request(url).responseData { response in
               switch response.result {
               case .success(let data):
                   if let image = UIImage(data: data) {
                       DispatchQueue.main.async {
                           self.imageView.image = image
                       }
                   }
               case .failure(_):
                   break
               }
           }
       }

       func configure(with tag: Tag) {
           nameLabel.text = tag.name
           if let imageUrl = URL(string: tag.url) {
               downloadImage(withURL: imageUrl)
           }
       }
}
