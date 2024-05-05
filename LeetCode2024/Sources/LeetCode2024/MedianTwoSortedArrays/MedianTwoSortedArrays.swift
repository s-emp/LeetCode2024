final class MedianTwoSortedArrays {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var result = Array(repeating: 0, count: nums1.count + nums2.count)
        var index = 0
        var i = 0
        var j = 0
        while i < nums1.count && j < nums2.count {
            let num1 = nums1[i]
            let num2 = nums2[j]
            if num1 < num2 {
                result[index] = num1
                i += 1
            } else if num1 == num2 {
                result[index] = num1
                index += 1
                result[index] = num2
                i += 1
                j += 1
            } else {
                result[index] = num2
                j += 1
            }
            index += 1
        }
        if i < nums1.count {
            for numIndex in i..<nums1.count {
                result[numIndex + j] = nums1[numIndex]
            }
        }
        if j < nums2.count {
            for numIndex in j..<nums2.count {
                result[numIndex + i] = nums2[numIndex]
            }
        }
        guard result.count > 1 else { return Double(result.first!) }
        if result.count % 2 == 0 {
            let leftCenter: Int = result.count / 2
            return Double(result[leftCenter] + result[leftCenter - 1]) / 2
        } else {
            return Double(result[result.count / 2])
        }
    }
}
