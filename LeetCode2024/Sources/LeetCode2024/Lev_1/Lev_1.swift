
final class Lev_1 {
    func removeElement(arr: inout [Int]) {
        var currentIndex = 0
        for (i, value) in arr.enumerated() where value % 2 == 1 {
            arr.swapAt(i, currentIndex)
            currentIndex += 1
        }
        arr.removeLast(arr.count - currentIndex)
    }
}

