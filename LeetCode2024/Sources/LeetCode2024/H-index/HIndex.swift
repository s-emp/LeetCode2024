// https://leetcode.com/problems/h-index/?envType=study-plan-v2&envId=top-interview-150

final class HIndex {
    func hIndex(_ citations: [Int]) -> Int {
        let citations = citations.sorted(by: >)
        var result = 0
        for (index, citation) in citations.enumerated() {
            if index < citation { result += 1 } else { break }
        }
        return result
    }
}
