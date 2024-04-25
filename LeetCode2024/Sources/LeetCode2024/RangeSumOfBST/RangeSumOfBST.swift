final class RangeSumOfBST {
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        var result = 0
        parse(root, &result, low, high)
        return result
    }
    
    private func parse(_ root: TreeNode?, _ sum: inout Int, _ low: Int, _ hight: Int) {
        guard let root else { return }
        if root.val < low {
            parse(root.right, &sum, low, hight)
            return
        }
        if root.val > hight {
            parse(root.left, &sum, low, hight)
            return
        }
        sum += root.val
        parse(root.right, &sum, low, hight)
        parse(root.left, &sum, low, hight)
    }
}
