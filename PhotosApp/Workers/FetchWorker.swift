//
//  FetchWorker.swift
//  PhotosApp
//
//  Created by Allison Lindner on 31/07/20.
//  Copyright © 2020 Allison Lindner. All rights reserved.
//

import Foundation
import Moya

public class FetchWorker {
	func fetchPhotos(completion: @escaping ([PhotoDTO]) -> Void) {
		photosProvider.request(.photos) { (result) in
			switch result {
			case let .success(moyaResponse):
				do {
					completion(try JSONDecoder().decode([PhotoDTO].self, from: moyaResponse.data))
				} catch {
					//TODO: resolve errors
				}
			case let .failure(moyaError):
				debugPrint(moyaError)
			}
		}
	}
	
	func fetchAlbums(completion: @escaping ([AlbumDTO]) -> Void) {
		photosProvider.request(.photos) { (result) in
			switch result {
			case let .success(moyaResponse):
				do {
					completion(try JSONDecoder().decode([AlbumDTO].self, from: moyaResponse.data))
				} catch {
					//TODO: resolve errors
				}
			case let .failure(moyaError):
				debugPrint(moyaError)
			}
		}
	}
}
