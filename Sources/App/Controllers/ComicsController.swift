import Fluent
import Vapor

//struct Message: ResponseEncodable {
//let status: String
//let message: String
//}

struct ComicsController: RouteCollection {
	func boot(routes: any Vapor.RoutesBuilder) throws {
		let comics = routes.grouped("comics")
		comics.group("") { comic in
			comic.get(use: self.comic_index)
			comic.post(use: self.comic_create)
			comic.get(":comicID", use: self.get_comic)
			comic.delete(":comicID", use: self.comic_delete)
		}

		comics.group("lunar") { comic in
			comic.get(use: self.lunar_index)
			comic.post(use: self.lunar_create)
			comic.get("series", use: self.lunar_series)
			comic.delete(":comicID", use: self.lunar_delete)
		}
	}

	@Sendable
	func comic_index(req: Request) async throws -> [Comic] {
		let comic_list = try await Comics.query(on: req.db).all.map { $0.toDTO() }
		return comic_list
	}

	@Sendable
	func comic_create(req: Request) async throws -> HTTPStatus {
		let com = try req.content.decode(Comic.self)
		let comic = com.toModel()
		try await comic.save(on: req.db)
		return .ok
	}

	@Sendable
	func get_comic(req: Request) async throws -> Comic {
		guard
			let comic_id = try await Comics.find((req.parameters.get("comicID")), on: req.db)
		else {
			throw Abort(.notFound)
		}
		let comic = try await Comics.query(on: req.db).filter(\.$id == comic_id).first()
		return comic
	}
	@Sendable
	func comic_delete(req: Request) async throws -> HTTPStatus {
		guard
			let comic = try await Comics.find((req.parameters.get("comicID")), on: req.db)
		else {
			throw Abort(.notFound)
		}
		try await comic.delete(on: req.db)
		return .noContent
	}

	@Sendable
	func lunar_index(req: Request) async throws -> [LunarComic] {
		let comics = try await LunarComicModel.query(on: req.db).all().map { $0.toDTO() }
		return comics
	}
	@Sendable
	func lunar_series(req: Request) async throws -> [LunarComic] {
		let comics = try await LunarComicModel.query(on: req.db).all().map { $0.toDTO() }
		return comics
	}
	@Sendable
	func lunar_create(req: Request) async throws -> HTTPStatus {
		let com = try req.content.decode(LunarComic.self)
		let comic = com.toModel()
		try await comic.save(on: req.db)
		return .ok
	}
	@Sendable
	func lunar_delete(req: Request) async throws -> HTTPStatus {
		guard
			let comic = try await LunarComicModel.find((req.parameters.get("comicID")), on: req.db)
		else {
			throw Abort(.notFound)
		}
		try await comic.delete(on: req.db)
		return .noContent
	}
}
