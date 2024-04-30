final class HIndex {
    func hIndex(_ citations: [Int]) -> Int {
        let citations = citations.sorted(by: >)
        var result = 0
        for (index, value) in citations.enumerated() {
            if value > index {
                result += 1
            } else { break }
        }
        return result
    }
}
