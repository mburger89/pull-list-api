import Fluent
import Foundation

final class Comics: Model, @unchecked Sendable {
	static let schema = "comic"

	@ID(key: .id)
	var id: UUID?

	@Field(key: "code")
	var code: String

	@Field(key: "ISBN")
	var isbn: String

	@Field(key: "UPC")
	var upc: String

	@Field(key: "EAN")
	var ean: Int

	@Field(key: "Title")
	var title: String

	@Field(key: "MainDesc")
	var description: String

	@Field(key: "VariantDescription")
	var variant_description: String

	@Field(key: "VariantNumber")
	var variant_no: Int

	@Field(key: "IssueNumber")
	var issue_no: Int

	@Field(key: "price")
	var price: Double

	@Field(key: "publisher")
	var publisher: String

	@Field(key: "writer")
	var writer: [String]

	@Field(key: "artist")
	var artist: [String]

	@Field(key: "Cover_Artist")
	var conver_artist: String

	@Field(key: "colorist")
	var colorist: [String]

	@Field(key: "number of pages")
	var number_of_pages: Int

	@Field(key: "thumbnail")
	var thumbnail: URL

	@Field(key: "print_date")
	var print_date: Date

	@Field(key: "FOC")
	var FOC: Date

	@Field(key: "InitialOrderDue")
	var initial_order_due: Date

	@Field(key: "genre")
	var genre: String

	@Field(key: "category")
	var category: String

	init() {}

	func toDTO() -> Comic {
		init(
			id: (self.id ?? UUID()),
			code: self.code,
			isbn: self.isbn,
			upc: self.upc,
			ean: self.ean,
			title: self.title,
			description: self.description,
			variant_description: self.variant_description,
			variant_no: self.variant_no,
			price: self.price,
			publisher: self.publisher,
			writer: self.writer,
			artist: self.artist,
			cover_artist: self.cover_artist,
			number_of_pages: self.number_of_pages,
			thumbnail: self.thumbnail,
			print_date: self.print_date,
			FOC: self.FOC,
			initial_order_due: self.initial_order_due,
			genre: self.genre,
			category: self.category
		)
	}
}
