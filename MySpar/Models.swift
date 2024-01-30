import Foundation

struct Spec: Hashable {
    let name: String
    let value: String
}

struct Comment: Hashable {
    let name: String
    let date: Date
    let rate: Int
    let text: String
}
