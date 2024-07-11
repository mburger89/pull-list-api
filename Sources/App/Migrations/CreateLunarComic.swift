//
//  File.swift
//  
//
//  Created by Max Burger on 7/2/24.
//

import Foundation
import Fluent

struct CreateLunarComic: AsyncMigration {
	func prepare(on database: Database) async throws {
		try await database.schema("lunar_comics")
			.id()
			.field("Code", .string, .required)
			.field("AlternateLunarCode", .string, .required)
			.field("Title", .string, .required)
			.field("MainDesc", .string)
			.field("IssueNumber", .int)
			.field("MaxIssue", .double)
			.field("ItemCategory", .int)
			.field("ProductCategory", .string)
			.field("SeriesCode", .int)
			.field("Retail", .double)
			.field("DiscountCode", .string)
			.field("Publisher", .string)
			.field("UPC", .int)
			.field("ISBN", .int)
			.field("EAN", .int)
			.field("Writer", .array(of: .string))
			.field("Artist", .array(of: .string))
			.field("CoverArtist", .string)
			.field("InitialOrderDue", .date)
			.field("FOCDate", .date)
			.field("InStoreDate", .date)
			.field("ParentCode", .string)
			.field("PageNumber", .int)
			.field("NumberOfPages", .int)
			.field("UnitWeight", .double)
			.field("Mature", .bool)
			.field("Adult", .bool)
			.field("O_A", .bool)
			.field("OrderFormNotes", .string)
			.field("Description", .string)
			.field("Color", .string)
			.field("VariantType", .string)
			.field("VariantDescription", .string)
			.field("VariantNumber", .int)
			.field("Printing", .int)
			.field("CoverType", .string)
			.field("PublishingGroup", .string)
			.field("ImprintCode", .string)
			.field("SubImprintGroup", .string)
			.field("FormatCode", .string)
			.field("PaperCode", .string)
			.field("CoverCode", .string)
			.field("BindingCode", .string)
			.field("TrimCode", .string)
			.field("TrimSize", .string)
			.field("CartonCount", .int)
			.field("Rating", .string)
			.field("TradeDress", .string)
			.field("Popup", .string)
			.field("Sequence", .string)
			.field("PublisherCode", .string)
			.field("T_Number", .string)
			.field("PublisherSeriesCode", .string)
			.field("ImageUrl", .string)
			.field("Returnable", .string)
			.field("ReturnWindow", .string)
			.create()
		
	}

	func revert(on database: Database) async throws {
		try await database.schema("lunar_comics").delete()
	}
}
