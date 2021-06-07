//
//  Movie+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Nicolas Le Gorrec on 6/7/21.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var timestamp: Date?
    @NSManaged public var director: String?
    @NSManaged public var title: String?
    @NSManaged public var year: Int16

}

extension Movie : Identifiable {

}
