//
//  PhotosServices.swift
//  PhotosApp
//
//  Created by Allison Lindner on 31/07/20.
//  Copyright © 2020 Allison Lindner. All rights reserved.
//

import Foundation
import Alamofire
import Moya

let photosProvider = MoyaProvider<PhotosServices>()

enum PhotosServices {
	case albums
	case photos
}

extension PhotosServices: TargetType {
	var baseURL: URL {
		return URL(string: "https://jsonplaceholder.typicode.com")!
	}
	
	var path: String {
		switch self {
		case .albums:
			return "/albums"
		case .photos:
			return "/photos"
		}
	}
	
	var method: Moya.Method {
		switch self {
		case .albums, .photos:
			return .get
		}
	}
	
	var sampleData: Data {
		switch self {
		default:
			return "{}".data(using: .utf8)!
		}
	}
	
	var task: Task {
		switch self {
		case .albums, .photos:
			return .requestPlain
		}
	}
	
	var headers: [String : String]? {
		return nil
	}
}
