public import Foundation

public struct FacilityReference: Hashable, Sendable {
    public let facilityID: UUID

    public init(facilityID: UUID) {
        self.facilityID = facilityID
    }
}
