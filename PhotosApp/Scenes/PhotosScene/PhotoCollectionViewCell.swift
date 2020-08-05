//
//  PhotoCollectionViewCell.swift
//  PhotosApp
//
//  Created by Allison Lindner on 04/08/20.
//  Copyright © 2020 Allison Lindner. All rights reserved.
//

import UIKit
import SnapKit

class PhotoCollectionViewCell: UICollectionViewCell {
	private var imageView: UIImageView!
	private var image: UIImage!
	
	public func setup(withImage image: UIImage) {
		self.image = image
		
		if imageView == nil {
			imageView = UIImageView(image: image)
			
			self.contentView.addSubview(imageView)
			
			imageView.snp.makeConstraints { (make) in
				make.top.equalTo(self.contentView.snp.top)
				make.right.equalTo(self.contentView.snp.right)
				make.bottom.equalTo(self.contentView.snp.bottom)
				make.left.equalTo(self.contentView.snp.left)
			}
		} else {
			imageView.image = image
		}
	}
}
