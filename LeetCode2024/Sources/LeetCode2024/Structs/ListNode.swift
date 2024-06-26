public class ListNode: Equatable {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        lhs.val == rhs.val && lhs.next == rhs.next
    }
}

extension ListNode: CustomStringConvertible {
    public var description: String {
        var node = self
        var description = "[\(node.val)"
        
        while let next = node.next {
            description += ", \(next.val)"
            node = next
        }
        
        description += "]"
        return description
    }
}
