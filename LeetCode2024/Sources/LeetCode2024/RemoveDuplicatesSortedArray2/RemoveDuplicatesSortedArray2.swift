final class RemoveDuplicatesSortedArray2 {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var dic = [Int: Int]()
        var i = 0
        while i < nums.count {
            let num = nums[i]
            dic[num, default: 0] += 1
            let count = dic[num]!
            guard count > 2 else { i += 1; continue }
            nums.remove(at: i)
        }
        return nums.count
    }
}
