//
//  File.swift
//
//
//  Created by Max Burger on 7/2/24.
//

import Fluent
import Foundation

struct CreateUsers: AsyncMigration {
	func prepare(on database: Database) async throws {
		try await database.schema("users")
			.id()
			.field("first_name", .string, .required)
			.field("last_name", .string, .required)
			.field("email", .string, .required)
			.field("password_hash", .string, .required)
			.field("created_at", .date)
			.field("home_cs", .string)
			.create()

	}

	func revert(on database: Database) async throws {
		try await database.schema("users").delete()
	}
}
