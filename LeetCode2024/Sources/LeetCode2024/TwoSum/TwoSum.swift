class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dictionary = Dictionary<Int, Int>()
        for i in 0..<nums.count {
            let value = nums[i]
            if let j = dictionary[target - value] {
                return [j, i]
            } else {
                dictionary[value] = i
            }
        }
        return []
    }
}
