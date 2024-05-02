final class NextGreaterElement {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = Array(repeating: -1, count: nums1.count)
        for (i, num) in nums1.enumerated() {
            var isSearch = true
            for num2 in nums2 {
                if isSearch && num == num2 {
                    isSearch = false
                }
                if !isSearch && num2 > num {
                    result[i] = num2
                    break
                }
            }
        }
        return result
    }
}
