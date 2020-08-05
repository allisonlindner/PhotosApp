//
//  photo.swift
//  PhotosApp
//
//  Created by Allison Lindner on 31/07/20.
//  Copyright © 2020 Allison Lindner. All rights reserved.
//

import Foundation

public class PhotoDTO: Codable {
	var albumId: Int?
	var id: Int?
	var title: String?
	var url: String?
	var thumbnailUrl: String?
}
