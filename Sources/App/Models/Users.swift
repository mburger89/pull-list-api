import Fluent
import Foundation

final class UsersModel: Model, @unchecked Sendable {
	static let schema = "users"

	@ID(key: .id)
	var id: UUID?

	@Field(key: "first_name")
	var first_name: String

	@Field(key: "last_name")
	var last_name: String

	@Field(key: "email")
	var email: String

	@Field(key: "password_hash")
	var password_hash: String

	@Field(key: "created_at")
	var created_at: Date

	@Field(key: "home_cs")
	var home_cs: String

	init() {}

	func toDTO() -> User {
		.init(
			id: (self.id ?? UUID()),
			first_name: self.first_name,
			last_name: self.last_name,
			email: self.email,
			password_hash: self.password_hash,
			created_at: self.created_at,
			home_cs: self.home_cs
		)
	}
}
