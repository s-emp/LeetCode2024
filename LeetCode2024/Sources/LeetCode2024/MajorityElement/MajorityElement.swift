final class MajorityElement {
    func majorityElement(_ nums: [Int]) -> Int {
        var dic = [Int: Int]()
        let goal = nums.count / 2
        for num in nums {
            dic[num, default: 0] += 1
            if dic[num]! > goal { return num }
        }
        fatalError()
    }
}
