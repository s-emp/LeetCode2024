// https://leetcode.com/problems/binary-tree-vertical-order-traversal/description/

final class VerticalOrderTraversal {
    func verticalOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root else { return [[]] }
        let twoList = TwoList(val: [])
        parse(node: root, list: twoList)
        var columns: [Int: [Int]] = [:]
        columns.keys.min()
        return twoList.getArray()
        
    }
    
    fileprivate func parse(node: TreeNode, list: TwoList) {
        list.val.append(node.val)
        if let leftNode = node.left {
            if let leftList = list.left {
                parse(node: leftNode, list: leftList)
            } else {
                list.left = .init(val: [], left: nil, right: list)
                parse(node: leftNode, list: list.left!)
            }
        }
        if let rightNode = node.right {
            if let rightList = list.right {
                parse(node: rightNode, list: rightList)
            } else {
                list.right = .init(val: [], left: list, right: nil)
                parse(node: rightNode, list: list.right!)
            }
        }
    }
}
