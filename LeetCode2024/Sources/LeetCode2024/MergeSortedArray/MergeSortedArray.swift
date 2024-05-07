// https://leetcode.com/problems/merge-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150

final class MergeSortedArray {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = 0
        var j = 0
        var result = Array(repeating: 0, count: n + m)
        for index in 0..<m + n {
            var num1: Int? = nil
            var num2: Int? = nil
            if i < m {
                num1 = nums1[i]
            }
            if j < n {
                num2 = nums2[j]
            }
            if let num1 {
                if let num2 {
                    if num1 <= num2 {
                        result[index] = num1
                        i += 1
                    } else {
                        result[index] = num2
                        j += 1
                    }
                } else {
                    result[index] = num1
                    i += 1
                }
            } else if let num2 {
                result[index] = num2
                j += 1
            }
        }
        nums1 = result
    }
}
