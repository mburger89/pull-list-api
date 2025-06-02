import Fluent
import Foundation

struct CreateComic: AsyncMigration {
	func prepare(on database: Database) async throws {
		try await database.schema("comic")
			.id()
			.field("Code", .string, .required)
			.field("Title", .string, .required)
			.field("MainDesc", .string)
			.field("IssueNumber", .int)
			.field("SeriesCode", .int)
			.field("Retail", .double)
			.field("Publisher", .string)
			.field("UPC", .int)
			.field("ISBN", .int)
			.field("EAN", .int)
			.field("Writer", .array(of: .string))
			.field("Artist", .array(of: .string))
			.field("CoverArtist", .string)
			.field("InitialOrderDue", .date)
			.field("FOCDate", .date)
			.field("InStoreDate", .date)
			.field("NumberOfPages", .int)
			.field("Mature", .bool)
			.field("Description", .string)
			.field("Color", .string)
			.field("VariantType", .string)
			.field("VariantDescription", .string)
			.field("VariantNumber", .int)
			.field("PublishingGroup", .string)
			.field("ImprintCode", .string)
			.field("Rating", .string)
			.field("PublisherCode", .string)
			.field("PublisherSeriesCode", .string)
			.field("ImageUrl", .string)

			.create()

	}

	func revert(on database: Database) async throws {
		try await database.schema("lunar_comics").delete()
	}
}
