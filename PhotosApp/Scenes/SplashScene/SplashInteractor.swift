//
//  SplashInteractor.swift
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

protocol SplashBusinessLogic {
	func fetchData(request: Splash.Fetch.Request)
}

protocol SplashDataStore {
	//var name: String { get set }
}

class SplashInteractor: SplashBusinessLogic, SplashDataStore {
	var presenter: SplashPresentationLogic?
	var worker: SplashWorker?
	//var name: String = ""
	
	// MARK: Do something
	
	func fetchData(request: Splash.Fetch.Request) {
		worker = SplashWorker()
		worker?.fetchData() {
			let response = Splash.Fetch.Response(result: false)
			self.presenter?.presentFetchDataResult(response: response)
		}
	}
}
