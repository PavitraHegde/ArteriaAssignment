//
//  OrderInfo.swift
//  ArteriaTask
//
//  Created by Pavitra on 07/08/20.
//  Copyright © 2020 Pavitra Hegde. All rights reserved.
//

import Foundation

// MARK: - OrderDetails
struct OrderDetails: Codable {
    let d: D
}

// MARK: - D
struct D: Codable {
    let results: [Result]
}

// MARK: - Result
struct Result: Codable {
    let metadata: Metadata
    let soNo, loginID: String
    let orderType: OrderType
    let orderTypeDesc: OrderTypeDesc
    let orderDate, entryTime, customerNo: String
    let customerName: Name
    let customerPO: String
    let customerPODate: String?
    let shippingTypeID, shippingTypeDesc, meansOfTranstyp, meansOfTranstypDesc: String
    let shipToParty: String
    let shipToPartyName: Name
    let address1, address2, address3, address4: String
    let district, postalCode, city, state: String
    let stateDesc, countryCode, countryCodeDesc: String
    let salesArea: SalesArea
    let salesAreaDesc: SalesAreaDesc
    let salesOffice: String
    let saleOffDesc: SaleOffDesc
    let salesGroup: String
    let saleGrpDesc: SaleGrpDesc
    let plant, plantDesc: String
    let incoterm1: Incoterm1
    let incoterm1Desc: Incoterm1Desc
    let incoterm2: Incoterm2
    let payterm: Payterm
    let paytermDesc: PaytermDesc
    let currency: Currency
    let netPrice, totalAmount, taxAmount, altTaxClass: String
    let altTaxClassDesc, freight, discount: String
    let status: Status
    let statusDesc: StatusDesc
    let delvStatus: Status
    let delvStatusDesc: DelvStatusDesc
    let unloadingPoint: UnloadingPoint
    let receivingPoint, testrun, refDocNo, refDocCat: String
    let salesDist: SalesDist
    let salesDistDesc: SalesDistDesc
    let route: Route
    let routeDesc: RouteDesc
    let splProcessing, splProcessingDs: String
    let priceList: PriceList
    let priceListDesc: PriceListDesc
    let tax1Amount, tax2Amount, tax3Amount, tax4Amount: String
    let tax1Percent, tax2Percent, tax3Percent, tax4Percent: String
    let mrp, referenceNo, outstanding, netWeight: String
    let netWeightUom: NetWeightUom
    let totalQuantity: String
    let quantityUom: QuantityUom
    let advanceAmount, paymentStatus: String
    let paymentStatusDesc: PaymentStatusDesc
    let soItemDetails, soTexts, soConditions, soPartnerFunctions: So

    enum CodingKeys: String, CodingKey {
        case metadata = "__metadata"
        case soNo = "SONo"
        case loginID = "LoginID"
        case orderType = "OrderType"
        case orderTypeDesc = "OrderTypeDesc"
        case orderDate = "OrderDate"
        case entryTime = "EntryTime"
        case customerNo = "CustomerNo"
        case customerName = "CustomerName"
        case customerPO = "CustomerPO"
        case customerPODate = "CustomerPODate"
        case shippingTypeID = "ShippingTypeID"
        case shippingTypeDesc = "ShippingTypeDesc"
        case meansOfTranstyp = "MeansOfTranstyp"
        case meansOfTranstypDesc = "MeansOfTranstypDesc"
        case shipToParty = "ShipToParty"
        case shipToPartyName = "ShipToPartyName"
        case address1 = "Address1"
        case address2 = "Address2"
        case address3 = "Address3"
        case address4 = "Address4"
        case district = "District"
        case postalCode = "PostalCode"
        case city = "City"
        case state = "State"
        case stateDesc = "StateDesc"
        case countryCode = "CountryCode"
        case countryCodeDesc = "CountryCodeDesc"
        case salesArea = "SalesArea"
        case salesAreaDesc = "SalesAreaDesc"
        case salesOffice = "SalesOffice"
        case saleOffDesc = "SaleOffDesc"
        case salesGroup = "SalesGroup"
        case saleGrpDesc = "SaleGrpDesc"
        case plant = "Plant"
        case plantDesc = "PlantDesc"
        case incoterm1 = "Incoterm1"
        case incoterm1Desc = "Incoterm1Desc"
        case incoterm2 = "Incoterm2"
        case payterm = "Payterm"
        case paytermDesc = "PaytermDesc"
        case currency = "Currency"
        case netPrice = "NetPrice"
        case totalAmount = "TotalAmount"
        case taxAmount = "TaxAmount"
        case altTaxClass = "AltTaxClass"
        case altTaxClassDesc = "AltTaxClassDesc"
        case freight = "Freight"
        case discount = "Discount"
        case status = "Status"
        case statusDesc = "StatusDesc"
        case delvStatus = "DelvStatus"
        case delvStatusDesc = "DelvStatusDesc"
        case unloadingPoint = "UnloadingPoint"
        case receivingPoint = "ReceivingPoint"
        case testrun = "Testrun"
        case refDocNo = "RefDocNo"
        case refDocCat = "RefDocCat"
        case salesDist = "SalesDist"
        case salesDistDesc = "SalesDistDesc"
        case route = "Route"
        case routeDesc = "RouteDesc"
        case splProcessing = "SplProcessing"
        case splProcessingDs = "SplProcessingDs"
        case priceList = "PriceList"
        case priceListDesc = "PriceListDesc"
        case tax1Amount = "Tax1Amount"
        case tax2Amount = "Tax2Amount"
        case tax3Amount = "Tax3Amount"
        case tax4Amount = "Tax4Amount"
        case tax1Percent = "Tax1Percent"
        case tax2Percent = "Tax2Percent"
        case tax3Percent = "Tax3Percent"
        case tax4Percent = "Tax4Percent"
        case mrp = "Mrp"
        case referenceNo = "ReferenceNo"
        case outstanding = "Outstanding"
        case netWeight = "NetWeight"
        case netWeightUom = "NetWeightUom"
        case totalQuantity = "TotalQuantity"
        case quantityUom = "QuantityUom"
        case advanceAmount = "AdvanceAmount"
        case paymentStatus = "PaymentStatus"
        case paymentStatusDesc = "PaymentStatusDesc"
        case soItemDetails = "SOItemDetails"
        case soTexts = "SOTexts"
        case soConditions = "SOConditions"
        case soPartnerFunctions = "SOPartnerFunctions"
    }
}

enum Currency: String, Codable {
    case dem = "DEM"
    case eur = "EUR"
    case inr = "INR"
}

enum Name: String, Codable {
    case ambalEnterprises = "AMBAL ENTERPRISES"
    case sampthaServices = "samptha & services"
}

enum Status: String, Codable {
    case c = "C"
    case empty = ""
}

enum DelvStatusDesc: String, Codable {
    case closed = "Closed"
}

enum Incoterm1: String, Codable {
    case cif = "CIF"
}

enum Incoterm1Desc: String, Codable {
    case costsInsuranceFreigh = "Costs, insurance & freigh"
}

enum Incoterm2: String, Codable {
    case berlin = "Berlin"
    case costInsuranceFreight = "cost insurance & freight"
}

// MARK: - Metadata
struct Metadata: Codable {
    let id, uri: String
    let type: TypeEnum
}

enum TypeEnum: String, Codable {
    case sfgwAllSo = "SFGW_ALL.SO"
}

enum NetWeightUom: String, Codable {
    case g = "G"
    case kg = "KG"
}

enum OrderType: String, Codable {
    case or = "OR"
}

enum OrderTypeDesc: String, Codable {
    case standardOrder = "Standard Order"
}

enum PaymentStatusDesc: String, Codable {
    case paymentStatusDescOpen = "Open"
}

enum Payterm: String, Codable {
    case the0001 = "0001"
    case zb01 = "ZB01"
}

enum PaytermDesc: String, Codable {
    case payImmediatelyWODeduction = "Pay immediately w/o deduction"
    case the14Days330245Net = "14 Days 3%, 30/2%, 45 net"
}

enum PriceList: String, Codable {
    case empty = ""
    case the03 = "03"
}

enum PriceListDesc: String, Codable {
    case empty = ""
    case industry = "Industry"
}

enum QuantityUom: String, Codable {
    case ea = "EA"
    case pc = "PC"
}

enum Route: String, Codable {
    case empty = ""
    case r00001 = "R00001"
    case r00110 = "R00110"
}

enum RouteDesc: String, Codable {
    case dresdenBerlin = "Dresden - Berlin"
    case empty = ""
    case hamburgBerlin = "Hamburg - Berlin"
}

enum SaleGrpDesc: String, Codable {
    case grH1MrThomas = "Gr. H1 Mr. Thomas"
    case salesGroup1 = "Sales group 1"
}

enum SaleOffDesc: String, Codable {
    case officeHamburg = "Office Hamburg"
    case salesOfficeMysore = "Sales Office Mysore"
}

enum SalesArea: String, Codable {
    case insoN1I2 = "INSO/N1/I2"
    case the10001000 = "1000/10/00"
}

enum SalesAreaDesc: String, Codable {
    case germanyFrankfurtFinalCustomerSalesCrossDivision = "Germany Frankfurt/Final customer sales/Cross-division"
    case salesOrgnIN17DirectSalesTelco = "Sales Orgn IN17/Direct Sales/Telco"
}

enum SalesDist: String, Codable {
    case de0010 = "DE0010"
    case empty = ""
}

enum SalesDistDesc: String, Codable {
    case empty = ""
    case northernGermany = "Northern Germany"
}

// MARK: - So
struct So: Codable {
    let deferred: Deferred

    enum CodingKeys: String, CodingKey {
        case deferred = "__deferred"
    }
}

// MARK: - Deferred
struct Deferred: Codable {
    let uri: String
}

enum StatusDesc: String, Codable {
    case approved = "Approved"
    case empty = ""
}

enum UnloadingPoint: String, Codable {
    case empty = ""
    case torA23 = "Tor A23"
}
