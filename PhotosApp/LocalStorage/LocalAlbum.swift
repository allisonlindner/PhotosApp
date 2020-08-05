//
//  LocalAlbum.swift
//  PhotosApp
//
//  Created by Allison Lindner on 31/07/20.
//  Copyright © 2020 Allison Lindner. All rights reserved.
//

import Foundation
import RealmSwift

public class LocalAlbum: Object {
	let userId = RealmOptional<Int>()
	@objc dynamic var id: Int = 0
	@objc dynamic var title: String? = nil
	
	public override class func primaryKey() -> String? {
		return "id"
	}
}
