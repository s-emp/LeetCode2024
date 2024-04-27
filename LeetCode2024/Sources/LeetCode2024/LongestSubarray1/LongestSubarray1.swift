// https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/description/

final class LongestSubarray1 {
    func longestSubarray(_ nums: [Int]) -> Int {
        var maxValue = 0
        var current = [(Int, Bool)]()
        var isZero = false
        for num in nums {
            switch num {
            case 0:
                isZero = true
                if current.count == 2 {
                    let first = current.first!.0
                    maxValue = max(maxValue, first)
                    current = [(current[1].0, true)]
                } else if current.count == 1 {
                    if current[0].1 {
                        maxValue = max(maxValue, current[0].0)
                        current = []
                    } else {
                        current = [(current[0].0, true)]
                    }
                } else {
                    continue
                }
            case 1:
                if current.count == 0 {
                    current.append((1, false))
                } else if current.count == 1 && current[0].1 {
                    current[0] = (current[0].0 + 1, current[0].1)
                    current.append((1, false))
                } else {
                    current = current.map {
                        ($0.0 + 1, $0.1)
                    }
                }
            default:
                continue
            }
        }
        for i in current {
            maxValue = max(maxValue, i.0)
        }
        if !isZero {
            return maxValue - 1
        }
        return maxValue
    }
}
