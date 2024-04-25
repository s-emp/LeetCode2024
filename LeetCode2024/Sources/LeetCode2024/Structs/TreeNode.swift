public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}


public class TwoList {
    public var val: [Int]
    public var left: TwoList?
    public var right: TwoList?
    
    public init(val: [Int], left: TwoList? = nil, right: TwoList? = nil) {
        self.val = val
        self.left = left
        self.right = right
    }
    
    func getArray() -> [[Int]] { // что бы собрать я опять прохожусь по всему массиву, что не очень быстро
        var leftArray = [[Int]]()
        var currentLeft = left
        while currentLeft != nil {
            leftArray.append(currentLeft!.val)
            currentLeft = currentLeft!.left
        }
        var rightArray = [[Int]]()
        var currentRight = right
        while currentRight != nil {
            rightArray.append(currentRight!.val)
            currentRight = currentRight!.right
        }
        leftArray.reverse() // медленно
        leftArray.append(val)
        leftArray.append(contentsOf: rightArray)
        return leftArray
    }
}
