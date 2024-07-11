//
//  File.swift
//
//
//  Created by Max Burger on 6/30/24.
//

//import Foundation
import Fluent
import Foundation


final class LunarComicModel: Model, @unchecked Sendable {
	static let schema = "lunar_comics"

	@ID(key: .id)
	var id: UUID?

	@Field(key: "Code")
	var Code: String

	@Field(key: "AlternateLunarCode")
	var	AlternateLunarCode: String

	@Field(key: "Title")
	var Title: String

	@Field(key: "MainDesc")
	var MainDesc: String

	@Field(key: "IssueNumber")
	var IssueNumber: Int

	@Field(key: "MaxIssue")
	var MaxIssue: Double

	@Field(key: "ItemCategory")
	var ItemCategory: Int

	@Field(key: "ProductCategory")
	var ProductCategory: String

	@Field(key: "SeriesCode")
	var SeriesCode: Int

	@Field(key: "Retail")
	var Retail: Double

	@Field(key: "DiscountCode")
	var DiscountCode: String

	@Field(key: "Publisher")
	var Publisher: String

	@Field(key: "UPC")
	var UPC: Int

	@Field(key: "ISBN")
	var	ISBN: Int

	@Field(key: "EAN")
	var EAN: Int

	@Field(key: "Writer")
	var Writer: [String]

	@Field(key: "Artist")
	var Artist: [String]

	@Field(key: "CoverArtist")
	var CoverArtist: String

	@Field(key: "InitialOrderDue")
	var InitialOrderDue: Date

	@Field(key: "FOCDate")
	var FOCDate: Date

	@Field(key: "InStoreDate")
	var InStoreDate: Date

	@Field(key: "ParentCode")
	var ParentCode: String

	@Field(key: "PageNumber")
	var PageNumber: Int

	@Field(key: "NumberOfPages")
	var NumberOfPages: Int

	@Field(key: "UnitWeight")
	var UnitWeight: Double

	@Field(key: "Mature")
	var Mature: Bool

	@Field(key: "Adult")
	var Adult: Bool

	@Field(key: "O_A")
	var O_A: Bool

	@Field(key: "OrderFormNotes")
	var OrderFormNotes: String

	@Field(key: "Description")
	var Description: String

	@Field(key: "Color")
	var Color: String

	@Field(key: "VariantType")
	var VariantType: String

	@Field(key: "VariantDescription")
	var VariantDescription: String

	@Field(key: "VariantNumber")
	var VariantNumber: Int

	@Field(key: "Printing")
	var Printing: Int

	@Field(key: "CoverType")
	var CoverType: String

	@Field(key: "PublishingGroup")
	var PublishingGroup: String

	@Field(key: "ImprintCode")
	var ImprintCode: String

	@Field(key: "SubImprintGroup")
	var SubImprintGroup: String

	@Field(key: "FormatCode")
	var FormatCode: String

	@Field(key: "PaperCode")
	var PaperCode: String

	@Field(key: "CoverCode")
	var CoverCode: String

	@Field(key: "BindingCode")
	var BindingCode: String

	@Field(key: "TrimCode")
	var TrimCode: String

	@Field(key: "TrimSize")
	var TrimSize: String

	@Field(key: "CartonCount")
	var CartonCount: Int

	@Field(key: "Rating")
	var Rating: String

	@Field(key: "TradeDress")
	var TradeDress: String

	@Field(key: "Popup")
	var Popup: String

	@Field(key: "Sequence")
	var Sequence: String

	@Field(key: "PublisherCode")
	var PublisherCode: String

	@Field(key: "T_Number")
	var T_Number: String

	@Field(key: "PublisherSeriesCode")
	var PublisherSeriesCode: String

	@Field(key: "ImageUrl")
	var ImageUrl: URL

	@Field(key: "Returnable")
	var Returnable: String

	@Field(key: "ReturnWindow")
	var ReturnWindow: String

	//	Creates new Comic Entry
	init() {}

	func toDTO() -> LunarComic {
		.init(
		id: (self.id ?? UUID()),
		Code: self.Code,
		AlternateLunarCode: self.AlternateLunarCode,
		Title: self.Title,
		MainDesc: self.MainDesc,
		IssueNumber: self.IssueNumber,
		MaxIssue: self.MaxIssue,
		ItemCategory: self.ItemCategory,
		ProductCategory: self.ProductCategory,
		SeriesCode: self.SeriesCode,
		Retail: self.Retail,
		DiscountCode: self.DiscountCode,
		Publisher: self.Publisher,
		UPC: self.UPC,
		ISBN: self.ISBN,
		EAN: self.EAN,
		Writer: self.Writer,
		Artist: self.Artist,
		CoverArtist: self.CoverArtist,
		InitialOrderDue: self.InitialOrderDue,
		FOCDate: self.FOCDate,
		InStoreDate: self.InStoreDate,
		ParentCode: self.ParentCode,
		PageNumber: self.PageNumber,
		NumberOfPages: self.NumberOfPages,
		UnitWeight: self.UnitWeight,
		Mature: self.Mature,
		Adult: self.Adult,
		O_A: self.O_A,
		OrderFormNotes: self.OrderFormNotes,
		Description: self.Description,
		Color: self.Color,
		VariantType: self.VariantType,
		VariantDescription: self.VariantDescription,
		VariantNumber: self.VariantNumber,
		Printing: self.Printing,
		CoverType: self.CoverType,
		PublishingGroup: self.PublishingGroup,
		ImprintCode: self.ImprintCode,
		SubImprintGroup: self.SubImprintGroup,
		FormatCode: self.FormatCode,
		PaperCode: self.PaperCode,
		CoverCode: self.CoverCode,
		BindingCode: self.BindingCode,
		TrimCode: self.TrimCode,
		TrimSize: self.TrimSize,
		CartonCount: self.CartonCount,
		Rating: self.Rating,
		TradeDress: self.TradeDress,
		Popup: self.Popup,
		Sequence: self.Sequence,
		PublisherCode: self.PublisherCode,
		T_Number: self.T_Number,
		PublisherSeriesCode: self.PublisherSeriesCode,
		ImageUrl: self.ImageUrl,
		Returnable: self.Returnable,
		ReturnWindow: self.ReturnWindow
		)
	}
}
