// https://leetcode.com/problems/two-sum/submissions/1276025030/?envType=study-plan-v2&envId=top-interview-150
// 2025
class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dictionary = [Int: Int]()
        for (index, value) in nums.enumerated() {
            if let otherIndex = dictionary[target - value] {
                return [otherIndex, index]
            }
            dictionary[value] = index
        }
        return []
    }
}
