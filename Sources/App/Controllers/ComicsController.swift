import Fluent
import Vapor

struct ComicsController: RouteCollection {
	func boot(routes: any Vapor.RoutesBuilder) throws {
		let comics = routes.grouped("comics")

		comics.group("lunar") { comic in
			comic.get(use: self.lunar_index)
			comic.post(use: self.lunar_create)
			comic.delete(":comicID", use: self.lunar_delete)
		}
	}



	@Sendable
	func lunar_index(req: Request) async throws -> [LunarComic] {
		let comics = try await LunarComicModel.query(on: req.db).all().map {$0.toDTO()}
		return (comics)
	}

	@Sendable
	func lunar_create(req: Request) async throws -> LunarComic {
		let com = try req.content.decode(LunarComic.self)
		let comic = com.toModel()
		try await comic.save(on: req.db)
		return com
	}
	
	@Sendable
    func lunar_delete(req: Request) async throws -> HTTPStatus {
        guard let comic = try await LunarComicModel.find((req.parameters.get("comicID")), on: req.db) else {
            throw Abort(.notFound)
        }
        try await comic.delete(on: req.db)
        return .noContent
    }
}
