import Fluent
import Vapor

struct PullListController: RouteCollection {
	func boot(routes: any Vapor.RouteBuilder) throws {
		let pl = routes.grouped("pulls")
		pl.group("") { pull in
			pl.get(use: self.pulls_index)
		}
	}

	@Sendable
	func pulls_index(req: Request) async throws -> [] {
		return []
	}

	@Sendable
	func get_pull(req: Request) async throws -> [] {
		return []
	}

	@Sendable
	func delete_pull(req: Request) async throws -> [] {

	}
}
