// https://leetcode.com/problems/binary-tree-vertical-order-traversal/description/

final class VerticalOrderTraversal {
    func verticalOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root else { return [] }
        var columnTable = [0: [root.val]]
        var queue: [(value: TreeNode, column: Int)] = [(root, 0)]
        var minValue = 0, maxValue = 0
        while !queue.isEmpty {
            let current = queue.removeFirst()
            let column = current.column
            if let left = current.value.left {
                queue.append((left, column - 1))
                minValue = min(minValue, column - 1)
                columnTable[column - 1, default: []].append(left.val)
            }
            if let right = current.value.right {
                queue.append((right, column + 1))
                maxValue = max(maxValue, column + 1)
                columnTable[column + 1, default: []].append(right.val)
            }
        }
        var result = Array(repeating: [Int](), count: maxValue - minValue + 1)
        let offset = minValue * -1
        for item in columnTable {
            let index = item.key + offset
            result[index] = item.value
        }
        return result
    }
}
