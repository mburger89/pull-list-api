import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req async -> String in
        "It works!"
    }

    app.get("health") { req async -> HTTPStatus in
        .ok
    }

	try app.register(collection: ComicsController())
}
