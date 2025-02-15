import Fluent
import Foundation

final class Comics: Model, @unchecked Sendable {
	static let schema = "comic"

	@ID(key: .id)
	var id: UUID?

	@Field(key: "ISBN")
	var isbn: String

	@Field(key: "UPC")
	var upc: String

	@Field(key: "Title")
	var title: String

	@Field(key: "Cover_Artist")
	var conver_artist: String
	s
}
