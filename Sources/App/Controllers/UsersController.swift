import Fluent
import Vapor

//struct Message: ResponseEncodable {
//let status: String
//let message: String
//}

struct UsersController: RouteCollection {
	func boot(routes: any Vapor.RoutesBuilder) throws {
		let user = routes.grouped("users")
		user.group("") { u in
			u.get(use: self.user_index)
		}
	}

	@Sendable
	func user_index(req: Request) async throws -> HTTPStatus {
		return .ok
	}
}
