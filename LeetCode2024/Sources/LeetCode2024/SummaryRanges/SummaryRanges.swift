// https://leetcode.com/problems/summary-ranges/description/?envType=study-plan-v2&envId=top-interview-150

final class SummaryRanges {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard !nums.isEmpty else { return [] }
        guard nums.count > 1 else { return ["\(nums.first!)"] }
        var result = [String]()
        var iterator = nums.makeIterator()
        var firstValue = iterator.next()!
        var prevValue: Int = firstValue
        while let nextValue = iterator.next() {
            if prevValue + 1 == nextValue {
                prevValue = nextValue
            } else {
                if firstValue == prevValue {
                    result.append("\(firstValue)")
                } else {
                    result.append("\(firstValue)->\(prevValue)")
                }
                firstValue = nextValue
                prevValue = firstValue
            }
        }
        if firstValue == prevValue {
            result.append("\(firstValue)")
        } else {
            result.append("\(firstValue)->\(prevValue)")
        }
        return result
    }
}
