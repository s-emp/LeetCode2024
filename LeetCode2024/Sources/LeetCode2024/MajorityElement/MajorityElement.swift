final class MajorityElement {
    func majorityElement(_ nums: [Int]) -> Int {
        var dic = [Int: Int]()
        for num in nums {
            dic[num, default: 0] += 1
        }
        return dic.first { $0.value > nums.count / 2 }!.key
    }
}
