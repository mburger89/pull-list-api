import Fluent
import Foundation
import Vapor

struct Comic: Content {
	var id: UUID
	var code: String
	var isbn: String
	var upc: String
	var ean: Int
	var title: String
	var description: String
	var variant_description: String
	var variant_no: Int
	var price: Double
	var publisher: String
	var writer: [String]
	var artist: [String]
	var cover_artist: String
	var number_of_pages: Int
	var thunbnail: URL
	var print_date: Date
	var FOC: Date
	var initial_order_due: Date
	var genre: String
	var category: String

	func toModel() -> Comics {
		let model = Comics()

		model.id = self.id
		model.code = self.code
		model.isbn = self.isbn
		model.upc = self.upc
		model.ean = self.ean
		model.title = self.title
		model.description = self.description
		model.variant_description = self.variant_description
		model.variant_no = self.variant_no
		model.price = self.price
		model.publisher = self.publisher
		model.writer = self.writer
		model.artist = self.artist
		model.conver_artist = self.cover_artist
		model.number_of_pages = self.number_of_pages
		model.thumbnail = self.thunbnail
		model.print_date = self.print_date
		model.FOC = self.FOC
		model.initial_order_due = self.initial_order_due
		model.genre = self.genre
		model.category = self.category

		return model
	}
}
