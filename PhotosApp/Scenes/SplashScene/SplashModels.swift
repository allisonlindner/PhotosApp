//
//  SplashModels.swift
//  PhotosApp
//
//  Created by Allison Lindner on 31/07/20.
//  Copyright (c) 2020 Allison Lindner. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Splash {
	// MARK: Use cases
	
	enum Fetch {
		struct Request {
		}
		struct Response {
			var result: Bool
		}
		struct ViewModel {
			var result: Bool
		}
	}
}
