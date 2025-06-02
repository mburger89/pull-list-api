import Fluent
import Foundation

final class ComicModel: Model, @unchecked Sendable {
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

	@Field(key: "title")
	var title: String

	@Field(key: "main_description")
	var description: String

	@Field(key: "variant_description")
	var variant_description: String

	@Field(key: "variant_number")
	var variant_no: Int

	@Field(key: "issue_number")
	var issue_no: Int

	@Field(key: "price")
	var price: Double

	@Field(key: "publisher")
	var publisher: String

	@Field(key: "writer")
	var writer: [String]

	@Field(key: "artist")
	var artist: [String]

	@Field(key: "cover_artist")
	var cover_artist: String

	@Field(key: "colorist")
	var colorist: [String]

	@Field(key: "number_of_pages")
	var number_of_pages: Int

	@Field(key: "thumbnail")
	var thumbnail: URL

	@Field(key: "print_date")
	var print_date: Date

	@Field(key: "FOC")
	var FOC: Date

	@Field(key: "initial_order_due")
	var initial_order_due: Date

	@Field(key: "genre")
	var genre: String

	@Field(key: "category")
	var category: String
    
    @Field(key: "series_code")
    var series_code: String
    
    @Field(key: "publisher_code")
    var publisher_code: String
    
    @Field(key: "rating")
    var rating: Double
    
    @Field(key: "imprint_code")
    var imprint_code: String
    
    @Field(key: "in_store_date")
    var in_store_date: Date
    
    @Field(key: "mature")
    var mature: Bool
    
	init() {}

	func toDTO() -> Comic {
		.init(
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
            colorist: self.colorist,
			number_of_pages: self.number_of_pages,
            thunbnail: self.thumbnail,
			print_date: self.print_date,
			FOC: self.FOC,
			initial_order_due: self.initial_order_due,
			genre: self.genre,
			category: self.category,
            series_code: self.series_code,
            publisher_code: self.publisher_code,
            rating: self.rating,
            imprint_code: self.imprint_code,
            in_store_date: self.in_store_date,
            mature: self.mature
		)
	}
}
