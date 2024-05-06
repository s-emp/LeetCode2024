final class MajorityElement {
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0
        var result = 0
        let goal = nums.count / 2
        for num in nums {
            guard count <= goal else { return result }
            if count == 0 { result = num }
            if result == num { count += 1 } else { count -= 1 }
        }
        return result
    }
}
