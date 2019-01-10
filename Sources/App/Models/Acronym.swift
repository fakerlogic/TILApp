//
//  Acronym.swift
//  App
//
//  Created by Kimi on 1/11/19.
//

import Vapor
import FluentSQLite

final class Acronym: Codable {
    var id: Int?
    var short: String
    var long: String
    
    init(short: String, long: String) {
        self.short = short
        self.long = long
    }
}

extension Acronym: Model {
    
    typealias ID = Int
    
    typealias Database = SQLiteDatabase
    
    public static var idKey: WritableKeyPath<Acronym, Int?> = \Acronym.id
}

extension Acronym: SQLiteModel {}
extension Acronym: Migration {}
extension Acronym: Content {}
