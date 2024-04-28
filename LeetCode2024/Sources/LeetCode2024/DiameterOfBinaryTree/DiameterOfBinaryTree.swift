// https://leetcode.com/problems/diameter-of-binary-tree/description/

final class DiameterOfBinaryTree {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var result = 0
        _ = find(root, &result)
        return result
    }
    
    private func find(_ root: TreeNode?, _ sum: inout Int) -> Int {
        guard let root else { return 0 }
        let leftSum = find(root.left, &sum)
        let rightSum = find(root.right, &sum)
        sum = max(sum, leftSum + rightSum)
        return max(leftSum, rightSum) + 1
    }
}
