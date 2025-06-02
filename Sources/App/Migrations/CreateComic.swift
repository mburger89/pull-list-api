import Fluent
import Foundation


struct CreateComic: AsyncMigration {
	func prepare(on database: Database) async throws {
		try await database.schema("comic")
			.id()
			.field("code", .string, .required)
			.field("title", .string, .required)
			.field("main_description", .string)
			.field("issue_number", .int)
			.field("series_code", .int)
			.field("retail", .double)
			.field("publisher", .string)
			.field("UPC", .int)
			.field("ISBN", .int)
			.field("EAN", .int)
			.field("writer", .array(of: .string))
			.field("artist", .array(of: .string))
			.field("cover_artist", .string)
			.field("initial_order_due", .date)
			.field("FOC", .date)
			.field("in_store_date", .date)
			.field("number_of_pages", .int)
			.field("mature", .bool)
			.field("description", .string)
			.field("colorist", .string)
			.field("variant_type", .string)
			.field("variant_description", .string)
			.field("variant_number", .int)
			.field("publishing_group", .string)
			.field("imprint_code", .string)
			.field("rating", .string)
			.field("publisher_code", .string)
			.field("thumbnail", .string)
            .field("price", .string)
            .field("print_date", .date)
            .field("genre", .string)
            .field("category", .string)

			.create()

	}

	func revert(on database: Database) async throws {
		try await database.schema("comic").delete()
	}
}
