//
//  AlbumsInteractor.swift
//  PhotosApp
//
//  Created by Allison Lindner on 28/07/20.
//  Copyright (c) 2020 Allison Lindner. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol AlbumsBusinessLogic {
	func doSomething(request: Albums.Something.Request)
}

protocol AlbumsDataStore {
	//var name: String { get set }
}

class AlbumsInteractor: AlbumsBusinessLogic, AlbumsDataStore {
	var presenter: AlbumsPresentationLogic?
	var worker: AlbumsWorker?
	//var name: String = ""
	
	// MARK: Do something
	
	func doSomething(request: Albums.Something.Request) {
		worker = AlbumsWorker()
		worker?.doSomeWork()
		
		let response = Albums.Something.Response()
		presenter?.presentSomething(response: response)
	}
}
