//
//  ListTableViewCell.swift
//  LessonTwo
//
//  Created by Nikita Sosyuk on 30.06.2023.
//

import UIKit

struct ListTableViewData {
    let title: String
    let image: UIImage
}

final class ListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        titleLabel.backgroundColor = .systemGray6
        titleLabel.layer.cornerRadius = 16
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = nil
        logoImageView.image = nil
    }
    
    func setUp(_ data: ListTableViewData) {
        titleLabel.text = data.title
        logoImageView.image = data.image
    }
}
