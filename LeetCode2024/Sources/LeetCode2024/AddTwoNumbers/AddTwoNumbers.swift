class AddTwoNumbers {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1
        var l2 = l2
        var additionalVal = 0
        let result = ListNode()
        var last: ListNode? = nil
        var first = result
        repeat {
            let new = ListNode()
            let sum = (l1?.val ?? 0) + (l2?.val ?? 0) + additionalVal
            first.val = sum % 10
            first.next = new
            last = first
            first = new
            additionalVal = if sum > 9 { 1 } else { 0 }
            l1 = l1?.next
            l2 = l2?.next
        } while l1 != nil || l2 != nil || additionalVal != 0
        last?.next = nil
        return result
    }
}
