class AddTwoNumbers {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1 else { return l2 }
        guard let l2 else { return l1 }
        var l1Array = [l1.val]
        var l2Array = [l2.val]
        var l1Next = l1
        var l2Next = l2
        while let next = l1Next.next {
            l1Array.append(next.val)
            l1Next = next
        }
        while let next = l2Next.next {
            l2Array.append(next.val)
            l2Next = next
        }
        l1Array.reverse()
        l2Array.reverse()
        let offset = l1Array.count - l2Array.count
        if offset < 0 {
            l1Array.insert(contentsOf: Array(repeating: 0, count: offset * -1), at: 0)
        } else if offset > 0 {
            l2Array.insert(contentsOf: Array(repeating: 0, count: offset), at: 0)
        }
        var first: ListNode? = nil
        var result: ListNode? = nil
        var addInt = 0
        for (index, l1Element) in l1Array.enumerated().reversed() {
            let l2Element = l2Array[index]
            let sum = l1Element + l2Element + addInt
            let resultDigit = sum % 10
            let newNode = ListNode(resultDigit)
            result?.next = newNode
            if first == nil {
                first = newNode
            }
            result = newNode
            addInt = if sum > 9 { 1 } else { 0 }
        }
        if addInt == 1 {
            result?.next = ListNode(1)
        }
        return first
    }
}
