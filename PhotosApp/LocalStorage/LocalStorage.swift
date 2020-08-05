//
//  LocalStorage.swift
//  PhotosApp
//
//  Created by Allison Lindner on 31/07/20.
//  Copyright © 2020 Allison Lindner. All rights reserved.
//

import Foundation
import RealmSwift

class LocalData: Object {
	@objc dynamic var id: Int = 0
	@objc dynamic var firstAccess: Int = 1
	
	public override class func primaryKey() -> String? {
		return "id"
	}
}

class LocalStorage {
	public static let shared = LocalStorage()
	private lazy var realm: Realm! = {
		return try! Realm()
	}()
	
	public func getAlbum(withId id: Int, realm: Realm) -> LocalAlbum? {
		return realm.objects(LocalAlbum.self).filter("id == \(id)").first
	}
	
	public func getAllAlbums(realm: Realm) -> [LocalAlbum] {
		return realm.objects(LocalAlbum.self).map { (result) -> LocalAlbum in
			return result
		}
	}
	
	public func getPhoto(withId id: Int, realm: Realm) -> LocalPhoto? {
		return realm.objects(LocalPhoto.self).filter("id == \(id)").first
	}
	
	public func getAllPhotos(realm: Realm) -> [LocalPhoto] {
		return realm.objects(LocalPhoto.self).map { (result) -> LocalPhoto in
			return result
		}
	}
	
	public func getFirstAccess(realm: Realm) -> Bool {
		if let localData = realm.object(ofType: LocalData.self, forPrimaryKey: 0) {
			if localData.firstAccess == 0 {
				return false
			} else {
				return true
			}
		}
		
		return true
	}
	
	public func setNotFirstAccess() {
		if let localData = realm.object(ofType: LocalData.self, forPrimaryKey: 0) {
			self.update {
				localData.firstAccess = 0
			}
		} else {
			let localData = LocalData()
			localData.firstAccess = 0
			localData.id = 0
				
			self.update {
				self.realm.add(localData)
			}
		}
	}
	
	public func update(_ write: @escaping () -> Void) {
		if realm != nil {
			do {
				try realm.write {
					write()
				}
			} catch let error {
				print("\(error.localizedDescription)")
			}
		}
	}
}
