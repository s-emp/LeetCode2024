extension Array where Element == Int {
    func toListNode() -> ListNode? {
        guard !isEmpty else { return nil }
        var currentListNode: ListNode?
        for value in reversed() {
            currentListNode = ListNode(value, currentListNode)
        }
        return currentListNode
    }
}
