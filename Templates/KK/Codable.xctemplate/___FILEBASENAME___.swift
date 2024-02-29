//___FILEHEADER___

import Foundation

struct ___FILEBASENAMEASIDENTIFIER___: Codable {
    var id = 0
    var title = ""
    var publishedAt = ""
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case publishedAt = "published_at"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = (try? values.decode(Int.self, forKey: .id)) ?? 0
        title = (try? values.decode(String.self, forKey: .title)) ?? ""
        publishedAt = (try? values.decode(String.self, forKey: .publishedAt)) ?? ""
    }
}
