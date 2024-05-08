// https://leetcode.com/problems/rotate-array/?envType=study-plan-v2&envId=top-interview-150

final class RotateArray {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let rotateCount = k % nums.count 
        guard rotateCount > 0 else { return }
        nums.insert(contentsOf: nums.suffix(rotateCount), at: 0)
        for _ in 0..<rotateCount {
            nums.removeLast()
        }
    }
}
