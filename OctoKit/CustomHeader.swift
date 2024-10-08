import Foundation
import RequestKit

/// Some APIs provide additional data for new (preview) APIs if a custom header is added to the request.
///
/// - Note: Preview APIs are subject to change.
public enum CustomHeader {
    /// The `Reactions` preview header provides reactions in `Comment`s.
    case reactions
    case acceptJson

    public var header: HTTPHeader {
        switch self {
        case .reactions:
            return HTTPHeader(headerField: "Accept", value: "application/vnd.github.squirrel-girl-preview")
        case .acceptJson:
            return HTTPHeader(headerField: "accept", value: "application/vnd.github+json")
        }
    }
}
