import Fluent
import Foundation
import Vapor

struct User: Content {
	var id: UUID
	var first_name: String
	var last_name: String
	var email: String
	var password_hash: String
	var created_at: Date
	var home_cs: String

	func toModel() -> UserModel {
		let model = UserModel()

		model.id = self.id
		model.first_name = self.first_name
		model.last_name = self.last_name
		model.email = self.email
		model.password_hash = self.password_hash
		model.created_at = self.created_at
		model.home_cs = self.home_cs

		return model
	}
}
