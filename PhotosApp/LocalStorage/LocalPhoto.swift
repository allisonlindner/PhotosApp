//
//  LocalPhoto.swift
//  PhotosApp
//
//  Created by Allison Lindner on 31/07/20.
//  Copyright © 2020 Allison Lindner. All rights reserved.
//

import Foundation
import RealmSwift

public class LocalPhoto: Object {
	let albumId = RealmOptional<Int>()
	@objc dynamic var id: Int = 0
	@objc dynamic var title: String? = nil
	@objc dynamic var url: String? = nil
	@objc dynamic var thumbnailUrl: String? = nil
	
	public override class func primaryKey() -> String? {
		return "id"
	}
}
