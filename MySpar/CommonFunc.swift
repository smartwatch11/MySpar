import Foundation

func dateFromString(str: String) -> Date? {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd.MM.yyyy"
    let date = dateFormatter.date(from: str)
    return date
}

func stringFromDate(date: Date) -> String? {
    let dateFormatter = DateFormatter()
    dateFormatter.locale = Locale(identifier: "ru-Ru")
    dateFormatter.dateFormat = "d MMMM yyyy"
    let date = dateFormatter.string(from: date)
    return date
}
