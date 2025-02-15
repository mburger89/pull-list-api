import Fluent
import Foundation

struct CreatePullList: AsyncMigration {
	func prepare(on database: Database) async throws {
		try await database.schema("pull_list")
			.id()
			.field("userID", .uuid, .required)
			.field("comic_id", .uuid, .required)
			.field("comic_title", .string)
			.field("img_url", .string)
			.field("publisher", .string)
			.create()

	}

	func revert(on database: Database) async throws {
		try await database.schema("pull_list").delete()
	}
}
