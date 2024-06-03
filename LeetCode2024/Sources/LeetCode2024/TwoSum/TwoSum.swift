// https://leetcode.com/problems/two-sum/submissions/1276025030/?envType=study-plan-v2&envId=top-interview-150

class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic = [Int: Int]()
        for (index, num) in nums.enumerated() {
            let searchNum = target - num
            guard let previewIndex = dic[searchNum] else {
                dic[num] = index
                continue
            }
            return [previewIndex, index]
        }
        return []
    }
}
