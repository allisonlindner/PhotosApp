//
//  SplashRouter.swift
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

@objc protocol SplashRoutingLogic {
	func routeToApp()
}

protocol SplashDataPassing {
	var dataStore: SplashDataStore? { get }
}

class SplashRouter: NSObject, SplashRoutingLogic, SplashDataPassing {
	var viewController: SplashViewController?
	var dataStore: SplashDataStore?
	
	// MARK: Routing
	
	func routeToApp() {
		let storyboard = UIStoryboard(name: "App", bundle: nil)
		let destinationVC = storyboard.instantiateInitialViewController()!
		navigateToApp(source: viewController!, destination: destinationVC)
	}
	
	// MARK: Navigation
	
	func navigateToApp(source: SplashViewController, destination: UIViewController) {
		source.present(destination, animated: true, completion: nil)
	}
}
