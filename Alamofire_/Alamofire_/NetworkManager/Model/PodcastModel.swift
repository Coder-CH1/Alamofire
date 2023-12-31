//
import Foundation

// MARK: - Welcome
class Welcome: Codable {
    let resultCount: Int
    let results: [Podcast]

    init(resultCount: Int, results: [Podcast]) {
        self.resultCount = resultCount
        self.results = results
    }
}

// MARK: - Result
class Podcast: Codable {
    let wrapperType: WrapperType
    let kind: Kind
    let artistID: Int?
    let collectionID: Int?
    let trackID: Int?
    let artistName: String
    let collectionName: String?
    let trackName: String
    let collectionCensoredName: String?
    let trackCensoredName: String
    let artistViewURL: String?
    let collectionViewURL: String?
    let trackViewURL: String?
    let previewURL: String?
    let artworkUrl30, artworkUrl60, artworkUrl100: String
    let collectionPrice, trackPrice: Double
    let releaseDate: String
    let collectionExplicitness: CollectionExplicitness
    let trackExplicitness: TrackExplicitness
    let discCount, discNumber, trackCount, trackNumber: Int?
    let trackTimeMillis: Int
    let country: Country
    let currency: Currency
    let primaryGenreName: String
    let contentAdvisoryRating: String?

    enum CodingKeys: String, CodingKey {
        case wrapperType, kind
        case artistID
        case collectionID
        case trackID
        case artistName, collectionName, trackName, collectionCensoredName, trackCensoredName
        case artistViewURL
        case collectionViewURL
        case trackViewURL
        case previewURL
        case artworkUrl30, artworkUrl60, artworkUrl100, collectionPrice, trackPrice, releaseDate, collectionExplicitness, trackExplicitness, discCount, discNumber, trackCount, trackNumber, trackTimeMillis, country, currency, primaryGenreName, contentAdvisoryRating
    }

    init(wrapperType: WrapperType, kind: Kind, artistID: Int, collectionID: Int?, trackID: Int, artistName: String, collectionName: String?, trackName: String, collectionCensoredName: String?, trackCensoredName: String, artistViewURL: String, collectionViewURL: String?, trackViewURL: String, previewURL: String, artworkUrl30: String, artworkUrl60: String, artworkUrl100: String, collectionPrice: Double, trackPrice: Double, releaseDate: String, collectionExplicitness: CollectionExplicitness, trackExplicitness: TrackExplicitness, discCount: Int?, discNumber: Int?, trackCount: Int?, trackNumber: Int?, trackTimeMillis: Int, country: Country, currency: Currency, primaryGenreName: String, contentAdvisoryRating: String?) {
        self.wrapperType = wrapperType
        self.kind = kind
        self.artistID = artistID
        self.collectionID = collectionID
        self.trackID = trackID
        self.artistName = artistName
        self.collectionName = collectionName
        self.trackName = trackName
        self.collectionCensoredName = collectionCensoredName
        self.trackCensoredName = trackCensoredName
        self.artistViewURL = artistViewURL
        self.collectionViewURL = collectionViewURL
        self.trackViewURL = trackViewURL
        self.previewURL = previewURL
        self.artworkUrl30 = artworkUrl30
        self.artworkUrl60 = artworkUrl60
        self.artworkUrl100 = artworkUrl100
        self.collectionPrice = collectionPrice
        self.trackPrice = trackPrice
        self.releaseDate = releaseDate
        self.collectionExplicitness = collectionExplicitness
        self.trackExplicitness = trackExplicitness
        self.discCount = discCount
        self.discNumber = discNumber
        self.trackCount = trackCount
        self.trackNumber = trackNumber
        self.trackTimeMillis = trackTimeMillis
        self.country = country
        self.currency = currency
        self.primaryGenreName = primaryGenreName
        self.contentAdvisoryRating = contentAdvisoryRating
    }
}

enum CollectionExplicitness: String, Codable {
    case explicit = "explicit"
    case notExplicit = "notExplicit"
}

enum Country: String, Codable {
    case usa = "USA"
}

enum Currency: String, Codable {
    case usd = "USD"
}

enum Kind: String, Codable {
    case musicVideo = "music-video"
}

enum TrackExplicitness: String, Codable {
    case cleaned = "cleaned"
    case notExplicit = "notExplicit"
}

enum WrapperType: String, Codable {
    case track = "track"
}
