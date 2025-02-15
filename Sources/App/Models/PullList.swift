import Fluent
import Foundation

/// pull list table model
final class PullList: Model, @unchecked Sendable {
	static let schema = "pull_list"

	@ID(key: .id)
	var id: UUID?

	@Field(key: "user_id")
	var userId: UUID

	@Field(key: "comic_id")
	var comic_id: UUID

	@Field(key: "comic_title")
	var comic_title: String

	@Field(key: "img_url")
	var image_url: String

	@Field(key: "publisher")
	var publisher: String

}
