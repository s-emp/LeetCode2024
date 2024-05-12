// https://leetcode.com/problems/candy/description/?envType=study-plan-v2&envId=top-interview-150

final class Candy {
    func candy(_ ratings: [Int]) -> Int {
        var left = Array(repeating: 1, count: ratings.count)
        var right = Array(repeating: 1, count: ratings.count)
        
        for i in 1..<ratings.count {
            if ratings[i] > ratings[i - 1] { left[i] = left[i - 1] + 1 }
        }
        for i in (0..<ratings.count - 1).reversed() {
            if ratings[i] > ratings[i + 1] { right[i] = right[i + 1] + 1 }
        }
        for i in 0..<ratings.count {
            left[i] = max(left[i], right[i])
        }
        return left.reduce(0, +)
    }
}

