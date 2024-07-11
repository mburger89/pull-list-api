//
//  File.swift
//
//
//  Created by Max Burger on 7/3/24.
//

import Foundation
import Fluent
import Vapor

struct LunarComic: Content {
	var id: UUID
	var Code: String
	var	AlternateLunarCode: String
	var Title: String
	var MainDesc: String
	var IssueNumber: Int
	var MaxIssue: Double
	var ItemCategory: Int
	var ProductCategory: String
	var SeriesCode: Int
	var Retail: Double
	var DiscountCode: String
	var Publisher: String
	var UPC: Int
	var	ISBN: Int
	var EAN: Int
	var Writer: [String]
	var Artist: [String]
	var CoverArtist: String
	var InitialOrderDue: Date
	var FOCDate: Date
	var InStoreDate: Date
	var ParentCode: String
	var PageNumber: Int
	var NumberOfPages: Int
	var UnitWeight: Double
	var Mature: Bool
	var Adult: Bool
	var O_A: Bool
	var OrderFormNotes: String
	var Description: String
	var Color: String
	var VariantType: String
	var VariantDescription: String
	var VariantNumber: Int
	var Printing: Int
	var CoverType: String
	var PublishingGroup: String
	var ImprintCode: String
	var SubImprintGroup: String
	var FormatCode: String
	var PaperCode: String
	var CoverCode: String
	var BindingCode: String
	var TrimCode: String
	var TrimSize: String
	var CartonCount: Int
	var Rating: String
	var TradeDress: String
	var Popup: String
	var Sequence: String
	var PublisherCode: String
	var T_Number: String
	var PublisherSeriesCode: String
	var ImageUrl: URL
	var Returnable: String
	var ReturnWindow: String

	func toModel() -> LunarComicModel {
		let model = LunarComicModel()

		model.id = self.id
		model.Code = self.Code
		model.AlternateLunarCode = self.AlternateLunarCode
		model.Title = self.Title
		model.MainDesc = self.MainDesc
		model.IssueNumber = self.IssueNumber
		model.MaxIssue = self.MaxIssue
		model.ItemCategory = self.ItemCategory
		model.ProductCategory = self.ProductCategory
		model.SeriesCode = self.SeriesCode
		model.Retail = self.Retail
		model.DiscountCode = self.DiscountCode
		model.Publisher = self.Publisher
		model.UPC = self.UPC
		model.ISBN = self.ISBN
		model.EAN = self.EAN
		model.Writer = self.Writer
		model.Artist = self.Artist
		model.CoverArtist = self.CoverArtist
		model.InitialOrderDue = self.InitialOrderDue
		model.FOCDate = self.FOCDate
		model.InStoreDate = self.InStoreDate
		model.ParentCode = self.ParentCode
		model.PageNumber = self.PageNumber
		model.NumberOfPages = self.NumberOfPages
		model.UnitWeight = self.UnitWeight
		model.Mature = self.Mature
		model.Adult = self.Adult
		model.O_A = self.O_A
		model.OrderFormNotes = self.OrderFormNotes
		model.Description = self.Description
		model.Color = self.Color
		model.VariantType = self.VariantType
		model.VariantNumber = self.VariantNumber
		model.VariantDescription = self.VariantDescription
		model.Printing = self.Printing
		model.CoverType = self.CoverType
		model.PublishingGroup = self.PublishingGroup
		model.ImprintCode = self.ImprintCode
		model.SubImprintGroup = self.SubImprintGroup
		model.FormatCode = self.FormatCode
		model.PaperCode = self.PaperCode
		model.CoverCode = self.CoverCode
		model.BindingCode = self.BindingCode
		model.TrimCode = self.TrimCode
		model.TrimSize = self.TrimSize
		model.CartonCount = self.CartonCount
		model.Rating = self.Rating
		model.TradeDress = self.TradeDress
		model.Popup = self.Popup
		model.Sequence = self.Sequence
		model.PublisherCode = self.PublisherCode
		model.T_Number = self.T_Number
		model.PublisherSeriesCode = self.PublisherSeriesCode
		model.ImageUrl = self.ImageUrl
		model.Returnable = self.Returnable
		model.ReturnWindow = self.ReturnWindow

		return model
	}
}
